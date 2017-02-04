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
 * @date 2016年10月14日 下午1:59:06
 */
public class MyRealm3 implements Realm {

	@Override
	public String getName() {
		return "this is my realm3";
	}

	@Override
	public boolean supports(AuthenticationToken token) {
		return token instanceof UsernamePasswordToken;
	}

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
		System.out.println("myrealm3 Certification success");
		return new SimpleAuthenticationInfo("314975605@qq.com",password,getName());
	}

}
