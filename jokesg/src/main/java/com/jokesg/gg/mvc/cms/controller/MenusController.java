package com.jokesg.gg.mvc.cms.controller;

import javax.annotation.Resource;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jokesg.gg.mvc.cms.service.MenusService;
import com.jokesg.gg.mvc.sys.entity.Menu;
import com.jokesg.gg.web.controller.BaseController;
/**
 * 菜单控制器，此类主要提供对菜单的增删改查
 * @author stealth.Lee
 * @date 2016年11月15日 下午3:53:50
 */
@Controller
@RequestMapping(value = "cms/menu")
public class MenusController extends BaseController{

	@Resource
	private MenusService menusService;
	
	@RequiresRoles("admin")
	@RequestMapping(value = "form")
	public String form(Model model, String id){
		Menu menu = new Menu();
		menu.setId(id);
		model.addAttribute("pNameV1", menusService.getV1());
		model.addAttribute("menus", menusService.get(menu));
		return "cms/menu1";
	}
	
	@RequiresRoles("admin")
	@RequestMapping(value = "save")
	public String save(Model model, Menu menu){
		menusService.save(menu);
		return null;
	}
	
	@RequiresRoles("admin")
	@RequestMapping(value = "delete")
	public String delete(String id){
		Menu menu = new Menu();
		menu.setId(id);
		menu.setDelFlag(null);
		Menu m = menusService.get(menu);
		menusService.deleteMenu(m);
		return "cms/menu";
	}
	
}
