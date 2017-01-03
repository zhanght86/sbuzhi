package com.jokesg.gg.mvc.sys.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jokesg.gg.common.utils.Const;
import com.jokesg.gg.common.utils.EmailUtils;
import com.jokesg.gg.common.utils.redis.RedisCache;
import com.jokesg.gg.mvc.sys.dao.CodeDao;
import com.jokesg.gg.mvc.sys.dao.UserDao;
import com.jokesg.gg.mvc.sys.entity.Code;
import com.jokesg.gg.mvc.sys.entity.Role;
import com.jokesg.gg.mvc.sys.entity.User;
import com.jokesg.gg.web.service.CrudService;
/**
 * 用户Service
 * Created by Stealth.Lee on 2016/9/10.
 */
@Service
@Transactional(readOnly = true)
public class UserService  extends CrudService<UserDao, User>{
	
	@Resource
	private CodeDao codeDao;
	
	public User getLoginName(String username){
		return dao.getLoginName(username);
	}

	public String getUserRole(String userId) {
		return dao.getUserRole(userId);
	}
	
	/**
	 * 注册成功，给用户添加一个`游客`角色。添加一条激活码记录，提示用户升级普通VIP。发送邮件，提示用户点击链接完成升级
	 * @param user
	 */
	@Transactional(readOnly = false)
	public void register(User user){
		Code code = null;
		Role role = null;
		int result = dao.insert(user);
		if(result > 0){
			code = new Code(user.getId(),Code.TYPE_EMAIL);
			code.preInsert();
			role = new Role(Role.ROLE_VISITORS);
			user.setRole(role);
			// 设置用户Code缓存有效期为1天
			RedisCache.set(Const.PREFIX + code.getUserId() + code.getType(), code.getCode(), 60*60*24);
			dao.addUserRole(user);
			codeDao.insert(code);
			EmailUtils.sendEmail(code,user.getEmail());
		}
	}

	@Transactional(readOnly = false)
	public void updateUserRole(String userId) {
		dao.updateUserRole(userId);
	}
	
	@Transactional(readOnly = false)
	public void modifyPwd(User user){
		user.preUpdate();
		dao.updatePasswordById(user);
	}
	
	@Transactional(readOnly = false)
	public void lockAccount(User user){
		user.preUpdate();
		dao.lockAccount(user);
	}
	
}
