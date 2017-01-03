package com.jokesg.gg.mvc.sys.realm;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.WebUtils;

import com.jokesg.gg.common.exception.CaptchaException;
import com.jokesg.gg.common.utils.StringUtil;
import com.jokesg.gg.mvc.sys.utils.UserUtils;
import com.jokesg.gg.web.servlet.ValidateCodeServlet;

/**
 * 扩展过滤器：表单验证（包含验证码）过滤类
 * 
 * @author stealth.Lee
 * @date 2016年10月11日 上午10:49:27
 */
public class FormAuthenticationFilter extends org.apache.shiro.web.filter.authc.FormAuthenticationFilter {

	/**
	 * 默认验证码参数名称
	 */
	public static final String DEFAULT_CAPTCHA_PARAM = "validateCode";

	/**
	 * 默认错误消息名称
	 */
	public static final String DEFAULT_MESSAGE_PARAM = "message";

	private String captchaParam = DEFAULT_CAPTCHA_PARAM; // 验证码参数名称
	private String messageParam = DEFAULT_MESSAGE_PARAM; // 错误消息名称

	public String getCaptchaParam() {
		return captchaParam;
	}

	public String getMessageParam() {
		return messageParam;
	}

	protected String getCaptcha(ServletRequest request) {
		return WebUtils.getCleanParam(request, getCaptchaParam());
	}

	/**
	 * 登录成功之后跳转的URL
	 */
	@Override
	public String getSuccessUrl() {
		return super.getSuccessUrl();
	}

	/**
	 * 登录成功重定向问题
	 */
	@Override
	protected void issueSuccessRedirect(ServletRequest request,
			ServletResponse response) throws Exception {
		WebUtils.issueRedirect(request, response, getSuccessUrl(), null, true);
	}

	/**
	 * 创建自定义扩展的UsernamePasswordToken,将验证码写进去
	 */
	@Override
	protected AuthenticationToken createToken(ServletRequest request,
			ServletResponse response) {
		String username = getUsername(request);
		String password = StringUtil.safeString(getPassword(request));
		boolean rememberMe = isRememberMe(request);
		String host = getHost(request);
		String captcha = getCaptcha(request);
		return new UsernamePasswordToken(username, password.toCharArray(),
				rememberMe, host, captcha);
	}

	/**
	 * 当登录成功时所响应的方法 将用户错误次数清空
	 */
	@Override
	protected boolean onLoginSuccess(AuthenticationToken token,
			Subject subject, ServletRequest request, ServletResponse response)
			throws Exception {
		UsernamePasswordToken touToken = (UsernamePasswordToken) token;
		Session session = UserUtils.getSession();
		session.removeAttribute(touToken.getUsername());
		return super.onLoginSuccess(token, subject, request, response);
	}
	
	/**
	 * 登录前执行的方法 在登录之前检验验证码是否正确 ，正确后再登录，否则直接抛出异常
	 */
	@Override
	protected boolean executeLogin(ServletRequest request,
			ServletResponse response) throws Exception {
		String username = getUsername(request);
		String captcha = getCaptcha(request);
		// 如果账号错误次数>=3次将开启验证码，并检验验证码是否正确，
		if(UserUtils.isValidateCodeLogin(username, false, false)){
			Session session = UserUtils.getSession();
			String code = (String)session.getAttribute(ValidateCodeServlet.VALIDATE_CODE);
			if (captcha == null || !captcha.toUpperCase().equals(code)){
				return onLoginFailure(this.createToken(request, response), new CaptchaException("msg:验证码不正确,请重新输入!"), request, response);
			}
		}
		return super.executeLogin(request, response);
	}

	/**
	 * 当登录失败时所响应的方法:将错误信息存到request中
	 */
	@Override
	protected boolean onLoginFailure(AuthenticationToken token,
			AuthenticationException e, ServletRequest request,
			ServletResponse response) {
		String className = e.getClass().getName();
		String message = "";
		if (StringUtil.isStrEqual(IncorrectCredentialsException.class.getName(), className) || StringUtil.isStrEqual(UnknownAccountException.class.getName(), className)) {
			message = "账号或密码错误,请重新输入!";
		} else if (e.getMessage() != null && StringUtils.startsWith(e.getMessage(), "msg:")) {
			message = StringUtils.replace(e.getMessage(), "msg:", "");
		} else {
			message = "系统异常,请稍后再试!";
			e.printStackTrace();
		}
		request.setAttribute(getFailureKeyAttribute(), className);
		request.setAttribute(getMessageParam(), message);
		return true;
	}

}
