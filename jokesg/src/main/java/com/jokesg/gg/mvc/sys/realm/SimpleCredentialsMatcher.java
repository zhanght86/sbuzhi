package com.jokesg.gg.mvc.sys.realm;

import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;

import com.jokesg.gg.common.utils.StringUtil;
import com.jokesg.gg.mvc.sys.utils.SystemUtils;

/**
 * 自定义密码验证类
 * @author stealth.Lee
 * @date 2016年10月25日 下午5:41:53
 */
public class SimpleCredentialsMatcher extends org.apache.shiro.authc.credential.SimpleCredentialsMatcher {
	
	
	/**
	 * 重写自定义密码验证
	 */
	@Override
	public boolean doCredentialsMatch(AuthenticationToken authctoken,
			AuthenticationInfo info) {
		UsernamePasswordToken token = (UsernamePasswordToken) authctoken;
		try {
			String securePassword = SystemUtils.securePassword(token.getUsername(), new String(token.getPassword()));
			String credentials = (String) getCredentials(info);
			return StringUtil.isStrEqual(securePassword, credentials);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
}
