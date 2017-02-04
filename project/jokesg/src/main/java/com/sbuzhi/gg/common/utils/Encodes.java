package com.sbuzhi.gg.common.utils;

import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.binary.Hex;
import org.apache.shiro.codec.Base64;
import org.apache.shiro.crypto.hash.Md5Hash;


/**
 * 封装各种格式的编码解码工具类.
 * @author stealth.Lee
 * @date 2016年9月26日 上午11:08:31
 */
public class Encodes {
	
	/**
	 * Hex编码.
	 */
	public static String encodeHex(byte[] input) {
		return new String(Hex.encodeHex(input));
	}

	/**
	 * Hex解码.
	 */
	public static byte[] decodeHex(String input) {
		try {
			return Hex.decodeHex(input.toCharArray());
		} catch (DecoderException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * Base64编码
	 * @param input
	 * @return
	 */
	public static String encodeBase64(String input){
		return Base64.encodeToString(input.getBytes());
	}
	
	/**
	 * Base64解码
	 * @param input
	 * @return
	 */
	public static String decodeBase64(String input){
		return Base64.decodeToString(input);
	}

	/**
	 * MD5加密,默认盐Jokesg
	 * 可通过String encodeMd5(String input,String salt)，自定义盐
	 * @param input
	 * @return
	 */
	public static String encodeMd5(Object input) {
		return encodeMd5(input, Const.SALT);
	}
	
	/**
	 * MD5加密
	 * @param input
	 * @param salt
	 * @return
	 */
	public static String encodeMd5(Object input,String salt) {
		return new Md5Hash(input, salt).toString();
	}
	
	public static void main(String[] args) {
		String str = "123456";
//		String str2 = "MTIzNDU2";
//		String re2 = decodeBase64(str2);
		
		System.out.println(encodeMd5(str));
	}
	
}
