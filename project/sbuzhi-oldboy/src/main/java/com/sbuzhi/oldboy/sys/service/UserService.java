package com.sbuzhi.oldboy.sys.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sbuzhi.oldboy.sys.dao.UserDao;
import com.sbuzhi.oldboy.sys.entity.User;
import com.sbuzhi.web.service.CrudService;
/**
 * 用户Service
 * @author stealth.Lee
 * @date 2017年2月7日 下午4:40:42
 */
@Service
@Transactional(readOnly = true)
public class UserService extends CrudService<UserDao, User> {
	
}
