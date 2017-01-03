package com.jokesg.gg.common.config;

/**
 * 全局配置类
 * @author stealth.Lee
 * @date 2016年11月4日 下午2:42:44
 */
public class Global {
	
	/**
	 * 当前对象实例
	 */
	private static Global global = new Global();
	
	/**
	 * 隐藏/显示
	 */
	public static final String HIDE = "0";
	public static final String SHOW = "1";
	
	/**
	 * 否/是
	 */
	public static final String NO = "0";
	public static final String YES = "1";

	/**
	 * 对/错
	 */
	public static final String TRUE = "true";
	public static final String FALSE = "false";
	
	/**
	 * 获取当前对象实例
	 */
	public static Global getInstance() {
		return global;
	}
}
