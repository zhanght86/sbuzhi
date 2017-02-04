package com.sbuzhi.gg.mvc.cms.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sbuzhi.gg.mvc.cms.vo.RoleMenu;
import com.sbuzhi.gg.mvc.sys.entity.Role;
import com.sbuzhi.gg.web.dao.CrudDao;
/**
 * 角色Dao，此DAO与sys下RoleDao不同。本类主要是针对角色的增删改查
 * @author stealth.Lee
 * @date 2016年11月16日 上午8:49:55
 */
@Repository
public interface RolesDao extends CrudDao<Role> {
	
	/**
	 * 给角色添加菜单权限
	 * @param lists
	 * @return
	 */
	public int addRoleMenu(List<RoleMenu> rms);

}
