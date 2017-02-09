package com.sbuzhi.oldboy;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sbuzhi.oldboy.sys.dao.UserDao;
import com.sbuzhi.oldboy.sys.entity.User;

@RunWith(SpringJUnit4ClassRunner.class)    
@ContextConfiguration(locations = {"classpath*:spring-mybatis.xml"})  
public class Demo {
	
	@Resource
	private UserDao userDao;
	
	@Test
	public void fun(){
		User user = userDao.get("1");
		System.out.println(user);
	}
	
}
