package com.jokesg.gg.mvc.sys.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jokesg.gg.mvc.sys.entity.Role;
import com.jokesg.gg.web.dao.CrudDao;

/**
 * 角色DAO
 * @author stealth.Lee
 * @date 2016年9月26日 上午11:49:53
 */
@Repository
public interface RoleDao extends CrudDao<Role> {

	/**
	 * 根据用户名获取所拥有的角色
	 * @param username 用户名
	 * @return 拥有的所有角色
	 */
	List<Role> getRoles(String username);
	
}
