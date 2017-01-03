package com.jokesg.gg.mvc.sys.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jokesg.gg.mvc.sys.entity.Menu;
import com.jokesg.gg.web.dao.CrudDao;
/**
 * 菜单Dao
 * @author stealth.Lee
 * @date 2016年11月16日 上午8:51:58
 */
@Repository
public interface MenuDao extends CrudDao<Menu>{

	/**
	 * 根据用户ID获取当前用户的菜单
	 * @return
	 */
	List<Menu> getSubMenus(Menu menu);
	
}
