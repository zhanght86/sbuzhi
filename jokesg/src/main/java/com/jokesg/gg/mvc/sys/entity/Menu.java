package com.jokesg.gg.mvc.sys.entity;

import java.util.List;

import com.jokesg.gg.web.entity.TreeEntity;

/**
 * 菜单实体
 * @author stealth.Lee
 * @date 2016年10月26日 下午3:13:56
 */
public class Menu extends TreeEntity<Menu> {
	
	/**
	 * 是否在菜单中显示[0:不显示 1:显示]
	 */
	protected static final String NOTSHOW = "0";
	protected static final String SHOW = "1";
	
	/**
	 * 链接
	 */
	private String Href;
	
	/**
	 * 图标
	 */
	private String Icon;
	
	/**
	 * 权限标识
	 */
	private String permission;
	
	/**
	 * 是否在菜单中显示
	 */
	private String isShow;
	
	/**
	 * 根据用户ID查询
	 */
	private String userId;
	
	/**
	 * 根据角色ID查询
	 */
	private String roleId;
	
	/**
	 * 用于存放子菜单
	 */
	private List<Menu> menus;
	
	public Menu() {
		super();
		this.isShow = SHOW;
	}

	public String getHref() {
		return Href;
	}

	public void setHref(String href) {
		Href = href;
	}

	public String getIcon() {
		return Icon;
	}

	public void setIcon(String icon) {
		Icon = icon;
	}
	
	public String getPermission() {
		return permission;
	}

	public void setPermission(String permission) {
		this.permission = permission;
	}

	public String getIsShow() {
		return isShow;
	}

	public void setIsShow(String isShow) {
		this.isShow = isShow;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public List<Menu> getMenus() {
		return menus;
	}

	public void setMenus(List<Menu> menus) {
		this.menus = menus;
	}
	
	@Override
	public String toString() {
		return "Menu [Href=" + Href + ", Icon=" + Icon + ", permission="
				+ permission + ", isShow=" + isShow + ", userId=" + userId
				+ ", roleId=" + roleId + ", menus=" + menus + ", insertBy="
				+ insertBy + ", insertDate=" + insertDate + ", updateBy="
				+ updateBy + ", updateDate=" + updateDate + ", remarks="
				+ remarks + ", delFlag=" + delFlag + ", id=" + id
				+ ", isNewRecord=" + isNewRecord + "]";
	}
	
}
