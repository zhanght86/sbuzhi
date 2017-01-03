package com.jokesg.gg.mvc.cms.controller;

import javax.annotation.Resource;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jokesg.gg.mvc.cms.service.UsersService;
import com.jokesg.gg.mvc.sys.entity.User;
import com.jokesg.gg.web.controller.BaseController;
/**
 * 用户管理控制器
 * @author Stealth.Lee
 * @date 2016年11月19日 下午5:07:17
 */
@Controller
@RequestMapping(value = "cms/user")
public class UsersController extends BaseController {
	
	@Resource
	private UsersService usersService;
	
	@RequiresRoles("admin")
	@RequestMapping(value = "form")
	public String form(Model model,User user){
		model.addAttribute("user", usersService.get(user));
		return "cms/user";
	}
	
	@RequiresRoles("admin")
	@RequestMapping(value = "save")
	public String save(User user){
		usersService.save(user);
		return "cms/user";
	}
	
}
