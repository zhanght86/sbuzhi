package com.sbuzhi.oldboy.sys.dao;

import org.springframework.stereotype.Repository;

import com.sbuzhi.oldboy.sys.entity.User;
import com.sbuzhi.web.dao.CrudDao;
/**
 * 用户Dao
 * @author stealth.Lee
 * @date 2017年2月7日 下午4:39:57
 */
@Repository
public interface UserDao extends CrudDao<User> {
	
	/**
	 * 通过登录名获取正常状态的User
	 * @param username
	 * @return
	 */
	User getLoginName(String username);
	
	/**
	 * 修改用户上次访问状态
	 * @param user
	 * @return
	 */
	int updateLoginInfo(User user);
	
}
