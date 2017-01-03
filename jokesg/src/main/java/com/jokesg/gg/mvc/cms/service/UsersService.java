package com.jokesg.gg.mvc.cms.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jokesg.gg.mvc.cms.dao.UsersDao;
import com.jokesg.gg.mvc.sys.entity.User;
import com.jokesg.gg.web.service.CrudService;
/**
 * 用户操作Service
 * @author Stealth.Lee
 * @date 2016年11月19日 下午5:06:17
 */
@Service
@Transactional(readOnly = true)
public class UsersService extends CrudService<UsersDao, User> {

	public int count(User user){
		return dao.count(user);
	}
	
	public User getUserByJokesgId(String id){
		return dao.getUserByJokesgId(id);
	}
	
}
