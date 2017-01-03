package com.jokesg.gg.mvc.cms.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jokesg.gg.mvc.sys.entity.Menu;
import com.jokesg.gg.web.dao.CrudDao;
/**
 * 菜单DAO，此dao作用是对菜单的增删改查，与sys下MenuDao不同
 * @author stealth.Lee
 * @date 2016年11月15日 下午4:05:34
 */
@Repository
public interface MenusDao extends CrudDao<Menu> {
	
	/**
	 * 获取所有正常的一级标题
	 * @return
	 */
	List<Menu> getParentV1();
	
	/**
	 * 获取菜单树
	 * @param id
	 * @return
	 */
	List<Menu> getMenuTree(Menu menu);
	
	/**
	 * 根据角色获取菜单权限
	 * @param roleId
	 * @return
	 */
	List<String> getMenuByRole(String roleId);
	
	/**
	 * 获取菜单分类
	 * @return
	 */
	List<Menu> menuCategories();
	
}
