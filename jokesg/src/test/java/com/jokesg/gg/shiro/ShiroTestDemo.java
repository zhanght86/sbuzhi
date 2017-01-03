package com.jokesg.gg.shiro;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ShiroTestDemo {

	protected Logger logger = LoggerFactory.getLogger(getClass());

	@Test
	public void fun1() {
		// 1.获取SecurityManager工厂，使用Ini配置文件初始化SecurityManager
		Factory<SecurityManager> factory = new IniSecurityManagerFactory(
				"classpath:test/shiro.ini");
		// 2.获取securityManager实例，绑定到SecurityUtils
		SecurityManager securityManager = factory.getInstance();
		SecurityUtils.setSecurityManager(securityManager);
		// 得到Subject及创建token
		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken("ls", "4561");
		try {
			// 登录
			subject.login(token);
			System.out.println("login success.");
		} catch (UnknownAccountException e) {
			System.out.println(e.getMessage());
		} catch (IncorrectCredentialsException e) {
			System.out.println(e.getMessage());
		} catch (AuthenticationException e) {
			System.out.println("error!");
			e.printStackTrace();
		}

		// 退出
		subject.logout();
		System.out.println("logout success.");
	}

	/**
	 * jdbcRealm测试
	 */
	@Test
	public void fun2() {
		SecurityManager securityManager = new IniSecurityManagerFactory(
				"classpath:test/shiro-jdbcrealm.ini").getInstance();
		SecurityUtils.setSecurityManager(securityManager);
		Subject subject = SecurityUtils.getSubject();

		UsernamePasswordToken token = new UsernamePasswordToken("zs", "123");

		try {
			subject.login(token);
			System.out.println("login success.");
		} catch (AuthenticationException e) {
			System.out.println("Account or password error!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		subject.logout();
		System.out.println("logout success.");
	}

	/**
	 * 测试shiro验证策略
	 */
	@Test
	public void fun3() {
		String config = "classpath:test/shiro-authenticator-all-success.ini";
		String username = "zs";
		String password = "123";
		login(config, username, password);
	}

	/**
	 * shiro权限测试,详情见笔记 ：验证Shiro权限方法
	 */
	@Test
	public void fun4() {
		String config = "classpath:shiro-test/shiro-role.ini";
		String username = "zs";
		String password = "123";
		Subject subject = getSubject(config);
		UsernamePasswordToken token = new UsernamePasswordToken(username,
				password);
		try {
			subject.login(token);
			System.out.println("login success.");
			/**
			 * 判断角色方法
			 */
//			System.out.println(subject.hasRole("person"));
//			System.out.println(subject.hasAllRoles(Arrays.asList("person","admin")));
//			System.out.println(subject.hasRoles(Arrays.asList("person","admin"))[1]);
//			subject.checkRole("admin");
//			subject.checkRoles(Arrays.asList("person"));
			/**
			 * 判断权限方法
			 */
//			System.out.println(subject.isPermitted("person:C"));
//			System.out.println(subject.isPermittedAll("person:C","person:R"));
//			System.out.println(subject.isPermitted("person:C","person:R","a")[2]);
//			subject.checkPermission("person:C");
			subject.checkPermissions("person:C","person:R","a");

		} catch (AuthenticationException e) {
			System.out.println(e.getMessage());
		} catch (Exception e) {
			System.out.println("System error!");
		}
		subject.logout();
		System.out.println("logout success.");
	}
	
	/**
	 * session会话管理
	 */
	@Test
	public void  fun5(){
		String config = "classpath:shiro-test/shiro-session.ini";
		String username = "zs";
		String password = "123";
		login(config, username, password);
	}
	
	
	/**
	 * 会话持久化
	 */
	@Test
	public void  fun6(){
		String config = "classpath:shiro-test/shiro-sessionDao.ini";
		String username = "zs";
		String password = "123";
		login(config, username, password);
	}
	
	/**
	 * 登录
	 * @param config
	 * @param username
	 * @param password
	 */
	public void login(String config, String username, String password) {
		SecurityManager securityManager = new IniSecurityManagerFactory(config)
				.getInstance();
		SecurityUtils.setSecurityManager(securityManager);
		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(username,
				password);
		try {
			subject.getSession().setTimeout(600);
			subject.login(token);
			System.out.println("login success.");
		} catch (AuthenticationException e) {
			System.out.println(e.getMessage());
		}
		subject.logout();
		System.out.println("logout success.");
	}

	/**
	 * 获取Subject
	 * 
	 * @param config
	 * @return
	 */
	public Subject getSubject(String config) {
		SecurityManager securityManager = new IniSecurityManagerFactory(config)
				.getInstance();
		SecurityUtils.setSecurityManager(securityManager);
		Subject subject = SecurityUtils.getSubject();
		return subject;
	}
	
	
}
