package com.sbuzhi.gg.mvc.sys.dao;

import org.springframework.stereotype.Repository;

import com.sbuzhi.gg.mvc.sys.entity.User;
import com.sbuzhi.gg.web.dao.CrudDao;

/**
 * 用户DAO
 * Created by Stealth.Lee on 2016/9/10.
 */
@Repository
public interface UserDao extends CrudDao<User>{
	
	/**
	 * 通过登录名获取正常状态的User
	 * @param username
	 * @return
	 */
	User getLoginName(String username);
	
	/**
	 * 根据用户ID获取角色类型
	 * @param user
	 * @return
	 */
	String getUserRole(String userId);

	/**
	 * 添加用户角色
	 * 用户注册成功时，给用户添加一个角色，默认角色类型是1：游客
	 * @param userId
	 * @param roleId 1
	 * @return
	 */
	int addUserRole(User user);
	
	/**
	 * 修改用户角色类型
	 * 用户账号必须是正常标记(DelFlag=1)并且是正常状态的(Status=1)
	 * @param user
	 * @return
	 */
	int updateUserRole(String userId);
	
	/**
	 * 修改用户密码
	 * 用户账号必须是正常标记(DelFlag=1)并且是正常状态的(Status=1)
	 * @param user
	 * @return
	 */
	int updatePasswordById(User user);
	
	/**
	 * 解/锁定账号
	 * @param user
	 * @return
	 */
	int lockAccount(User user);
	
	/**
	 * 解锁所有正常标记(DelFlag=1)并且正常状态(Status=1)的锁定的账号
	 * 每晚0：00：00解锁
	 * @return
	 */
	int unlockALL();
	
	/**
	 * 修改用户上次访问状态
	 * @param user
	 * @return
	 */
	int updateLoginInfo(User user);
	
}
