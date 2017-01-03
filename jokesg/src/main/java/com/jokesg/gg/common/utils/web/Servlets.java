package com.jokesg.gg.common.utils.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/**
 * Http与Servlet工具类
 * @author stealth.Lee
 * @date 2016年11月7日 下午2:46:14
 */
public class Servlets {

	/**
	 * 获取当前请求对象
	 * @return
	 */
	public static HttpServletRequest getRequest(){
		try {
			return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		} catch (Exception e) {
			return null;
		}
	}
	
}
