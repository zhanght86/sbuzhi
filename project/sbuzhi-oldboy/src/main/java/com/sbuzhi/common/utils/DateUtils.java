package com.sbuzhi.common.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 日期工具类
 * @author stealth.Lee
 * @date 2016年11月7日 上午9:59:14
 */
public class DateUtils {
	
	private static Logger logger = LoggerFactory.getLogger(DateUtils.class);
	
	/**
	 * 获取SimpleDateFormat
	 * @param pattern
	 * @return
	 */
	public static SimpleDateFormat getSimpleDateFormat(String pattern){
		SimpleDateFormat format = null;
		try {
			format = new SimpleDateFormat(pattern);
		} catch (Exception e) {
			logger.warn("[DateUtils] 日期格式错误，pattern：{}",pattern);
		}
		return format;
	}
	
	/**
	 * 格式化日期:yyyy-MM-dd HH:mm:ss
	 * @param date
	 * @return
	 */
	public static String formatTime(Date date){
		SimpleDateFormat format = getSimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return format.format(date);
	}
	
	/**
	 * 格式化日期:yyyy-MM-dd
	 * @param date
	 * @return
	 */
	public static String formatDate(Date date){
		SimpleDateFormat format = getSimpleDateFormat("yyyy-MM-dd");
		return format.format(date);
	}
	
	/**
	 * 格式化日期,自定义模式
	 * @param date
	 * @return
	 */
	public static String format(Date date,String pattern){
		try {
			SimpleDateFormat format = getSimpleDateFormat(pattern);
			return format.format(date);
		} catch (Exception e) {
			logger.warn("[DateUtils] 日期格式错误，pattern：{}",pattern);
		}
		return "";
	}
	
	/**
	 * 获取当前时间：年-月-日  时:分:秒
	 * @return
	 */
	public static String getTime(){
		return format(new Date(),"yyyy-MM-dd HH:mm:ss");
	}

	/**
	 * 获取当前日期：年-月-日
	 * @return
	 */
	public static String getDate(){
		return format(new Date(),"yyyy-MM-dd");
	}
	
	/**
	 * 获取当前时间，自定义格式
	 * @return
	 */
	public static String get(String pattern){
		try {
			return format(new Date(),pattern);
		} catch (Exception e) {
			logger.warn("[DateUtils] 日期格式错误，pattern：{}",pattern);
		}
		return "";
	}
	
	public static void main(String[] args) {
		System.out.println(DateUtils.getDate());
	}

}
