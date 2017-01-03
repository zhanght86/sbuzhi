package com.jokesg.gg.mvc.sys.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jokesg.gg.common.utils.DateUtils;
import com.jokesg.gg.common.utils.StringUtil;
import com.jokesg.gg.common.utils.web.InternetUtils;
import com.jokesg.gg.mvc.sys.dao.RoleDao;
import com.jokesg.gg.mvc.sys.dao.UserDao;
import com.jokesg.gg.mvc.sys.entity.Role;
import com.jokesg.gg.mvc.sys.entity.User;
import com.jokesg.gg.web.service.BaseService;

/**
 * 系统安全相关Service
 * @author stealth.Lee
 * @date 2016年10月25日 下午4:25:53
 */
@Service
@Transactional(readOnly = true)
public class SystemService extends BaseService{
	
	@Resource 
	private UserDao userDao;
	@Resource
	private RoleDao roleDao;
	
	/**
	 * 根据ID获取用户对象
	 * @param id
	 * @return
	 */
	public User get(String id){
		User user = userDao.get(id);
		if(user != null){
			user.setRoles(getRoles(user.getUsername()));
			return user;
		}
		return null;
	}
	
	/**
	 * 获取该用户下所有角色
	 */
	public List<Role> getRoles(String username){
		return roleDao.getRoles(username);
	}
	
	/**
	 * 修改用户登录信息：例如LgoinIp,LoginName
	 * @param user
	 */
	@Transactional(readOnly = false)
	public void updateUserLoginInfo(User user){
		// 保存上次登录信息
		user.setOldLoginIp(StringUtil.safeString(user.getLoginIp(), "第一次登陆"));
		user.setOldLoginName(StringUtil.safeString(user.getLoginName(), "第一次登陆"));
		user.setOldLoginTime(StringUtil.safeString(user.getLoginTime(), "第一次登陆"));
		// 更新本次登录信息
//		user.setLoginIp(InternetUtils.getRemoteAddr(Servlets.getRequest()));
//		user.setLoginName(InternetUtils.getHostName(Servlets.getRequest()));
		user.setLoginIp(InternetUtils.getIp());
		user.setLoginName(InternetUtils.getHostName());
		user.setLoginTime(DateUtils.getTime());
		userDao.updateLoginInfo(user);
	}
	
}
