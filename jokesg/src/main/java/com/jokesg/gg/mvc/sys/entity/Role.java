package com.jokesg.gg.mvc.sys.entity;

import java.util.ArrayList;
import java.util.List;

import com.jokesg.gg.web.entity.DataEntity;

/**
 * 角色实体
 * @author stealth.Lee
 * @date 2016年9月26日 上午11:30:42
 */
public class Role extends DataEntity<Role>{

	/**
	 * 角色类型(1：游客 )
	 */
	public static final String ROLE_VISITORS  = "1";
	
	/**
	 * 角色类型(2：普通用户)
	 */
	public static final String ROLE_ORDINARY = "2";
	
	/**
	 * 角色类型(3： 企业认证用户)
	 */
	public static final String ROLE_COMPANY = "3";

	/**
	 * 角色名称
	 */
	private String name;
	
	/**
	 * 英文名称
	 */
	private String enName;
	
	/**
	 * 菜单ID
	 */
	private String menuId;
	
	/**
	 * 根据用户查询
	 */
	private User user;
	
	/**
	 * 角色拥有的菜单列表
	 */
	private List<Menu> menus = new ArrayList<Menu>();
	
	public Role() {
		super();
	}
	
	public Role(String id) {
		super(id);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEnName() {
		return enName;
	}

	public void setEnName(String enName) {
		this.enName = enName;
	}
	
	public String getMenuId() {
		return menuId;
	}

	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Menu> getMenus() {
		return menus;
	}

	public void setMenus(List<Menu> menus) {
		this.menus = menus;
	}

	@Override
	public String toString() {
		return "Role [name=" + name + ", enName=" + enName + ", menuId="
				+ menuId + ", user=" + user + ", menus=" + menus
				+ ", insertBy=" + insertBy + ", insertDate=" + insertDate
				+ ", updateBy=" + updateBy + ", updateDate=" + updateDate
				+ ", remarks=" + remarks + ", delFlag=" + delFlag + ", id="
				+ id + ", isNewRecord=" + isNewRecord + "]";
	}
	
}
