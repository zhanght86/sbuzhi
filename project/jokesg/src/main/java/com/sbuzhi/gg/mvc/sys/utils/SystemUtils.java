package com.sbuzhi.gg.mvc.sys.utils;

import com.sbuzhi.gg.common.utils.Encodes;

/**
 * 系统安全工具类
 * @author stealth.Lee
 * @date 2016年11月2日 下午2:48:30
 */
public class SystemUtils {
	
	/**
	 * 生成安全的密码：先对密码进行MD5加密，然后再将账号和进行MD5加密后的密码相加进行MD5加密
	 * @param username 账号
	 * @param password 密码
	 * @return
	 */
	public static String securePassword(String username,String password){
		String md5 = Encodes.encodeMd5(password);
		return Encodes.encodeMd5(username+md5);
	}
	
	public static void main(String[] args) {
		System.out.println(securePassword("test@jokesg.com","123456"));
	}
	
}
