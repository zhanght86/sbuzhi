package com.jokesg.gg.common.utils;

import java.util.Random;

/**
 * 数字工具类
 * @author stealth.Lee
 * @date 2016年10月31日 下午4:23:07
 */
public class NubUtils {

	/**
	 * 生成1亿之内的随机数
	 * @param salt
	 * @return
	 */
	public static String randNub(){
		Random random = new Random();
		int result = random.nextInt(99999999);
		return String.valueOf(result);
	}

	/**
	 * 生成1亿之内的随机数(加上盐)作为验证码
	 * @param salt
	 * @return
	 */
	public static String randNub(String salt){
		return String.valueOf(randNub() + salt);
	}
	
}
