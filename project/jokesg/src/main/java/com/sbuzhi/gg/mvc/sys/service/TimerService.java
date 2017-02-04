package com.sbuzhi.gg.mvc.sys.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sbuzhi.gg.mvc.sys.dao.CodeDao;
import com.sbuzhi.gg.mvc.sys.dao.UserDao;

/**
 * 定时任务Service
 * @author stealth.Lee
 * @date 2016年11月4日 下午5:15:13
 */
@Service
public class TimerService {
	
	@Resource
	private CodeDao codeDao;
	@Resource
	private UserDao userDao;
	
	public int delOverdueCode() {
		return codeDao.delOverdueCode();
	}

	public int unlockAccount() {
		return userDao.unlockALL();
	}

}
