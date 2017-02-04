package com.sbuzhi.gg.mvc.cms.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sbuzhi.gg.common.utils.StringUtil;
import com.sbuzhi.gg.mvc.cms.dao.RolesDao;
import com.sbuzhi.gg.mvc.cms.vo.RoleMenu;
import com.sbuzhi.gg.mvc.sys.entity.Role;
import com.sbuzhi.gg.web.entity.DataEntity;
import com.sbuzhi.gg.web.service.CrudService;
/**
 * 角色Service
 * @author stealth.Lee
 * @date 2016年11月16日 上午10:30:34
 */
@Service
@Transactional(readOnly = true)
public class RolesService extends CrudService<RolesDao, Role> {
	
	public Role get(String id){
		return dao.get(id);
	}

	/**
	 * 添加角色菜单权限 ，先删除该角色原有所有的菜单权限，再添加
	 * @param rms
	 */
	@Transactional(readOnly = false)
	public void addRoleMenu(List<RoleMenu> rms){
		String roleId = rms.get(0).getRoleId();
		dao.delete(roleId);
		dao.addRoleMenu(rms);
	}
	
	/**
	 * 修改角色删除标记
	 * @param role
	 */
	@Transactional(readOnly = false)
	public void updateRoleDelFlag(Role role){
		// 判断该角色是否是正常状态，如果是正常状态，说明操作是删除，否则说明操作是恢复
		if(StringUtil.isStrEqual(role.getDelFlag(), DataEntity.DEL_FLAG_DELETE)){
			role.setDelFlag(DataEntity.DEL_FLAG_NORMAL);
		} else {
			role.setDelFlag(DataEntity.DEL_FLAG_DELETE);
		}
		role.preUpdate();
		dao.update(role);
	}
	
}
