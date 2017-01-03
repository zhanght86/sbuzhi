package com.jokesg.gg.shiro.realm;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.realm.Realm;
/**
 * 自定义Realm
 * @author skies Lee
 * @date 2016年10月13日 下午1:00:26
 */
public class MyRealm implements Realm {

	/**
	 * 返回一个唯一的Realm名字
	 */
	@Override
	public String getName() {
		return "This is my realm.";
	}

	/**
	 * 判断此Realm是否支持token
	 */
	@Override
	public boolean supports(AuthenticationToken token) {
		// 仅支持UsernamePasswordToken类型的Token
		return token instanceof UsernamePasswordToken;
	}

	/**
	 * 根据token获取认证信息
	 */
	@Override
	public AuthenticationInfo getAuthenticationInfo(AuthenticationToken token)
			throws AuthenticationException {
		String username = (String)token.getPrincipal();
		String password = new String((char[])token.getCredentials());
		if(!username.equals("zs")){
			throw new UnknownAccountException("Account does not exist:" + username);
		}
		if(!password.equals("123")){
			throw new IncorrectCredentialsException("Incorrect password:" + password);
		}
		System.out.println("myrealm Certification success");
		return new SimpleAuthenticationInfo(username,password,getName());
	}
}
