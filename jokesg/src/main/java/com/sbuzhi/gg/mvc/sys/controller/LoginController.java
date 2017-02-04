package com.sbuzhi.gg.mvc.sys.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.UnauthorizedException;
import org.apache.shiro.session.Session;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sbuzhi.gg.common.config.Global;
import com.sbuzhi.gg.common.utils.StringUtil;
import com.sbuzhi.gg.mvc.sys.entity.User;
import com.sbuzhi.gg.mvc.sys.realm.FormAuthenticationFilter;
import com.sbuzhi.gg.mvc.sys.realm.SystemAuthorizingRealm.Principal;
import com.sbuzhi.gg.mvc.sys.service.UserService;
import com.sbuzhi.gg.mvc.sys.utils.UserUtils;
import com.sbuzhi.gg.web.controller.BaseController;

/**
 * 登陆Controller
 * Created by Stealth.Lee on 2016/9/24.
 */
@Controller
public class LoginController extends BaseController {
	
	@Resource
	UserService userService;
	
    /**
     * 请求跳转到登陆页面
     * @return
     */
    @RequestMapping(value = {"login"},method = RequestMethod.GET)
    public String login(){
    	Principal principal = UserUtils.getPrincipal();
    	if(principal != null){
    		return "redirect:/a/index";
    	}
        return "sys/login2";
    }

    /**
     * 登陆失败，真正的登录由Filter完成
     * @return
     */
    @RequestMapping(value = {"login"},method = RequestMethod.POST)
	public String login(HttpServletRequest request, User user, Model model) {
		Principal principal = UserUtils.getPrincipal();
		if(principal != null){
    		return "redirect:/a/index";
		}
		
		String username = WebUtils.getCleanParam(request, FormAuthenticationFilter.DEFAULT_USERNAME_PARAM);
		boolean rememberMe = WebUtils.isTrue(request, FormAuthenticationFilter.DEFAULT_REMEMBER_ME_PARAM);
		String exception = (String)request.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);
		String message = (String)request.getAttribute(FormAuthenticationFilter.DEFAULT_MESSAGE_PARAM);
		if(StringUtils.isBlank(message) || StringUtil.isStrEqual(message, "null")){
			message = "帐号或密码错误,请重新输入";
		}
		
		// 非授权异常，登录失败，验证码加1。
		if (!UnauthorizedException.class.getName().equals(exception)){
			model.addAttribute("isValidateCodeLogin", UserUtils.isValidateCodeLogin(username,true, false));
			Session session = UserUtils.getSession();
			Integer errorNumber = (Integer) session.getAttribute(username);
			if(errorNumber >= 6){ // 密码错误次数>=6次后，锁定账号
				User user1 = userService.getLoginName(username);
				user1.setIsLogin(Global.NO);
				userService.lockAccount(user1);
				message = "密码错误次数过多，账号当天已被锁定!";
			}
		}
		
		model.addAttribute(FormAuthenticationFilter.DEFAULT_USERNAME_PARAM, username);
		model.addAttribute(FormAuthenticationFilter.DEFAULT_REMEMBER_ME_PARAM, rememberMe);
		model.addAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME, exception);
		model.addAttribute(FormAuthenticationFilter.DEFAULT_MESSAGE_PARAM, message);
		
		// 验证失败清空验证码
//		request.getSession().setAttribute(ValidateCodeServlet.VALIDATE_CODE, IdGen.uuid());
		
		return "sys/login2";
	}

}
