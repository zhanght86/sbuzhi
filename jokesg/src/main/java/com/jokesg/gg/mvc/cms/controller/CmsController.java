package com.jokesg.gg.mvc.cms.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jokesg.gg.common.utils.StringUtil;
import com.jokesg.gg.mvc.cms.service.MenusService;
import com.jokesg.gg.mvc.cms.service.RolesService;
import com.jokesg.gg.mvc.cms.service.UsersService;
import com.jokesg.gg.mvc.sys.entity.Role;
import com.jokesg.gg.mvc.sys.entity.User;
import com.jokesg.gg.web.controller.BaseController;
import com.jokesg.gg.web.entity.DataEntity;
import com.jokesg.gg.web.entity.Paging;
/**
 * 内容管理模块
 * @author stealth.Lee
 * @date 2016年11月17日 上午10:41:19
 */
@Controller
@RequestMapping(value = "cms")
public class CmsController extends BaseController {
	
	@Resource
	private RolesService rolesService;
	@Resource
	private MenusService menusService;
	@Resource
	private UsersService usersService;
	
	@RequiresRoles("admin")
	@RequestMapping(value = "roleMenu")
	public String role(Model model,String type){
		Role role = new Role();
		if(StringUtil.isStrEqual(type, "1")){
			role.setDelFlag(DataEntity.DEL_FLAG_NORMAL);
		}
		model.addAttribute("roles", rolesService.findAllList(role));
		return "cms/roleMenu";
	}
	
	@RequiresRoles("admin")
	@RequestMapping(value = "mMenu")
	public String menu(Model model,String type){
		model.addAttribute("menus", menusService.getMenuTree());
		return "cms/mMenu";
	}
	
	@RequiresRoles("admin")
	@RequestMapping(value = "userMenu")
	public String user(Model model, User user,HttpServletRequest request){
		int pageNo = StringUtil.safeInt(request.getParameter("pageNo"),1);
		Paging paging = new Paging();
		paging.setPageNo(pageNo);
		user.setPaging(paging);
		List<User> users = usersService.findList(user);
		model.addAttribute("users", users);
		// 总条数
		model.addAttribute("total", usersService.count(user));
		// 每页显示多少条记录
		model.addAttribute("size", paging.getPageSize());
		// 当前页
		model.addAttribute("pageNo", paging.getPageNo());
		return "cms/userMenu";
	}
	
}
