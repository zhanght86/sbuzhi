package com.jokesg.gg.mvc.cms.vo;

import com.jokesg.gg.web.entity.VoEntity;
/**
 * 角色菜单表Vo
 * @author stealth.Lee
 * @date 2016年11月17日 下午4:35:01
 */
public class RoleMenu extends VoEntity<RoleMenu>{
	
	private String id;
	private String roleId;
	private String menuId;
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getRoleId() {
		return roleId;
	}
	
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	
	public String getMenuId() {
		return menuId;
	}
	
	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}

	@Override
	public String toString() {
		return "RoleMenu [id=" + id + ", roleId=" + roleId + ", menuId="
				+ menuId + "]";
	}

}
