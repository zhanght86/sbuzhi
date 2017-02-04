package com.sbuzhi.gg.common.utils;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


/**
 * 自定义字符串工具类
 * @author stealth.Lee
 * @date 2016年9月26日 上午10:40:40
 */
public class StringUtil {
	
	private static Logger logger = LoggerFactory.getLogger(StringUtil.class);

	/**
	 * 判断两个字符串str1，str2是否相等
	 * @param str1
	 * @param str2
	 * @return
	 */
	public static boolean isStrEqual(String str1,String str2){
		if(StringUtils.isEmpty(str1)){
			return false;
		}
		if(str1.equals(str2)){
			return true;
		}
		return false;
	}
	
	/**
	 * 判断字符串str是否为null，若为null返回""
	 * @param str
	 * @return
	 */
	public static String safeString(String str){
		if(str == null){
			str = "";
		}
		return str;
	}
	
	/**
	 * 判断字符串str1是否为空，若为空返回字符串str2
	 * @param str
	 * @return
	 */
	public static String safeString(String str1,String str2){
		if(StringUtils.isEmpty(str1)){
			str1 = str2;
		}
		return str1;
	}
	
	/**
	 * 判断str是否为空，为空返回0
	 * @param str
	 * @return
	 */
	public static Integer safeInt(String str){
		try {
			if(StringUtils.isEmpty(str)){
				return 0;
			}
			return Integer.valueOf(str);
		} catch (NumberFormatException e) {
			logger.error("[safeInt] String转化Integer失败  str={}",str);
			return 0;
		}
	}
	
	/**
	 * 判断str是否为空，为空返回number
	 * @param str
	 * @param number
	 * @return
	 */
	public static Integer safeInt(String str,int number){
		try {
			if(StringUtils.isEmpty(str)){
				return number;
			}
			return Integer.valueOf(str);
		} catch (NumberFormatException e) {
			logger.error("[safeInt] String转化Integer失败  str={}",str);
			return 0;
		}
	}
	
	/**
	 * 将字符串转换成byte[]
	 * @param str
	 * @return
	 */
	public static byte[] parseBytes(String str){
		if(str != null){
			try {
				return str.getBytes(Const.ENCODING);
			} catch (UnsupportedEncodingException e) {
				return null;
			}
		}
		return null;
	}
	
	/**
	 * 将字符串转换成日期格式
	 * @param str
	 * @param pattern
	 * @return
	 */
	public static Date parseDate(String str,String pattern){
		SimpleDateFormat format = DateUtils.getSimpleDateFormat(pattern);
		Date date = null;
		try {
			date = format.parse(str);
		} catch (ParseException e) {
			logger.error("[StringUtil] 字符串转换日期失败");
		}
		return date;
	}
	
	/**
	 * 将字符串转换成日期格式：yyyy-MM-dd HH:mm:ss
	 * @param str
	 * @return
	 */
	public static Date parseDate(String str){
		return parseDate(str,"yyyy-MM-dd HH:mm:ss");
	}
	
	/**
	 * 字符串相乘
	 * @param str1
	 * @param str2
	 * @return
	 */
	public static String multiply(String str1,String str2){
		try {
			return String.valueOf(Integer.valueOf(str1) * Integer.valueOf(str2));
		} catch (NumberFormatException e) {
			logger.error("字符串转换异常", str1, str2);
			return "";
		}
	}
	
	public static void main(String[] args) {
		 Date parseDate = StringUtil.parseDate(DateUtils.getTime());
		 System.out.println(parseDate);
	}
	
}
