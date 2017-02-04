package com.sbuzhi.gg.mvc.sys.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sbuzhi.gg.common.utils.Const;
import com.sbuzhi.gg.common.utils.ObjectUtil;
import com.sbuzhi.gg.common.utils.StringUtil;
import com.sbuzhi.gg.components.datavalidation.exception.ValidationException;
import com.sbuzhi.gg.components.datavalidation.utils.ValidateService;
import com.sbuzhi.gg.mvc.sys.entity.User;
import com.sbuzhi.gg.mvc.sys.service.UserService;
import com.sbuzhi.gg.mvc.sys.utils.SystemUtils;
import com.sbuzhi.gg.web.controller.BaseController;

/**
 * 用户注册Controller
 * Created by Stealth.Lee on 2016/9/24.
 */
@Controller
public class SignupController extends BaseController {
	
	@Resource
	private UserService userService;
	
    @RequestMapping(value = {"signup"},method = RequestMethod.GET)
	public String signup() {
		return "sys/signup";
    }
	
    /**	
     * 注册控制
     * @param request
     * @param user
     * @return
     */
    @RequestMapping(value = {"signup"},method = RequestMethod.POST)
	public String signup(Model model,HttpServletRequest request, User user) {
    	user.preInsert();
    	String confirmPassword = request.getParameter("confirmPassword");
    	try {
			if (StringUtil.isStrEqual(user.getPassword(), confirmPassword)) {
				String pwd = SystemUtils.securePassword(user.getId(),user.getPassword());
				user.setPassword(pwd);
			} else {
				throw new ValidationException("两次输入密码不一致");
			}
			user.setUsername(user.getEmail());
			ValidateService.valid(user);
			userService.register(user);
			model.addAttribute("user", user);
			return "sys/signupSuccess";
		} catch (ValidationException e) {
			model.addAttribute(Const.MESSAGE, e.getMessage());
			logger.debug("数据校验失败!" + e.getClass().getName(), e);
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute(Const.MESSAGE, "系统异常!");
			logger.error("系统异常!" + e.getClass().getName(), e);
		}
		return "sys/signup";
	}
    
    /**
     * 异步校验用户名是否存在
     * @param username
     * @return
     * @throws Exception 
     */
    @ResponseBody
    @RequestMapping(value = {"checkUsername"})
    public boolean checkUsername(String email) throws Exception{
    	User user = userService.getLoginName(email);
    	if(user == null)
    		return true;
    	return false;
    }
    
    /**
     * 修改个人用户密码
     * 判段两次新密码是否相等，判断账号和旧密码是否匹配
     * @param user 账号和密码
     * @param pwd 新密码
     * @return
     */
    @RequestMapping(value = {"modifyPwd"})
    public String modifyPwd(Model model,User user,String pwd1,String pwd2){
    	if(!ObjectUtil.isAllBlank(user.getPassword(),pwd1,pwd2)){
    		String password = SystemUtils.securePassword(user.getUsername(), user.getPassword());
    		String pwd = SystemUtils.securePassword(user.getUsername(), pwd1);
    		try{
	    		if(!StringUtil.isStrEqual(pwd1, pwd2)){
	        		throw new ValidationException("两次新密码不一致，请重新输入!");
	        	}
	    		User u = userService.getLoginName(user.getUsername());
	    		if(!StringUtil.isStrEqual(password, u.getPassword())){
	    			throw new ValidationException("旧密码不正确，请重新输入!");
	    		}
	    		u.setPassword(pwd);
	    		userService.modifyPwd(u);
	    		model.addAttribute(Const.MESSAGE,"修改成功!");
	    	} catch (ValidationException e) {
				model.addAttribute(Const.MESSAGE, e.getMessage());
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute(Const.MESSAGE, Const.SYSTEM_EXP);
				logger.error("系统异常!" + e.getClass().getName(), e);
			}
    	}
    	return "sys/modifyPwd";
    }
    
}
