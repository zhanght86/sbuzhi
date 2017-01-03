package com.jokesg.gg.mvc.cms.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jokesg.gg.common.utils.ObjectUtil;
import com.jokesg.gg.common.utils.StringUtil;
import com.jokesg.gg.mvc.cms.service.MenusService;
import com.jokesg.gg.mvc.cms.service.RolesService;
import com.jokesg.gg.mvc.cms.vo.RoleMenu;
import com.jokesg.gg.mvc.sys.entity.Role;
import com.jokesg.gg.web.controller.BaseController;
/**
 * 角色控制器
 * @author stealth.Lee
 * @date 2016年11月16日 上午8:55:14
 */
@Controller
@RequestMapping(value = "cms/role")
public class RolesController extends BaseController {
	
	@Resource
	private RolesService rolesService;
	@Resource
	private MenusService menusService;
	
	@RequiresRoles("admin")
	@RequestMapping(value = "form")
	public String form(Model model, String id){
		model.addAttribute("rm", menusService.getMenu(id));
		model.addAttribute("menus", menusService.getMenuTree());
		model.addAttribute("role", rolesService.get(id));
		model.addAttribute("isDel", StringUtil.isStrEqual(rolesService.get(id) == null ? null : rolesService.get(id).getDelFlag(), "1"));
		return "cms/role";
	}
	
	@Transactional
	@ResponseBody
	@RequiresRoles("admin")
	@RequestMapping(value = "save")
	public String save(Model model, Role role, HttpServletRequest request){
		String menuIds = request.getParameter("nodeList");
		String roleId = role.getId();
		JSONObject jsonObject = JSONObject.fromObject(menuIds);  
		JSONArray jsonArray = jsonObject.getJSONArray("nodeList");
		
		role.setIsNewRecord(false);
		rolesService.save(role);
		
		RoleMenu rm = null;
		List<RoleMenu> rms = new ArrayList<RoleMenu>();
		if(ObjectUtil.isAllBlank(roleId)){
			// 为空说明新增操作
			for (Object object : jsonArray) {
				JSONObject json = (JSONObject) object;
				rm = new RoleMenu();
				rm.setRoleId(role.getId());
				rm.setMenuId(json.getString("id"));
				rms.add(rm);
			}
			rolesService.addRoleMenu(rms);
			//model.addAttribute(Const.MESSAGE, "保存角色"+role.getName()+"成功");
		} else {
			// 不为空说明修改操作	
			for (Object object : jsonArray) {
				JSONObject json = (JSONObject) object;
				rm = new RoleMenu();
				rm.setRoleId(roleId);
				rm.setMenuId(json.getString("id"));
				rms.add(rm);
			}
			rolesService.addRoleMenu(rms);
			//model.addAttribute(Const.MESSAGE, "修改角色"+role.getName()+"成功");
		}
		return "true";
	}
	
	@RequiresRoles("admin")
	@RequestMapping(value = "delete")
	public String delete(String id){
		Role role = rolesService.get(id);
		rolesService.updateRoleDelFlag(role);
		return "cms/role";
	}
	
}
