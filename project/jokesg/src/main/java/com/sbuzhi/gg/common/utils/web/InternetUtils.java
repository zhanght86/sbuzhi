package com.sbuzhi.gg.common.utils.web;

import java.net.InetAddress;
import java.net.UnknownHostException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 主机相关工具类
 * @author stealth.Lee
 * @date 2016年10月25日 上午11:52:26
 */
public class InternetUtils {
	
	private static Logger logger = LoggerFactory.getLogger(InternetUtils.class);

	/**
	 * 获取本机Ip
	 * @return
	 */
	public static String getIp(){
		try {
			InetAddress ia = InetAddress.getLocalHost();
			logger.info("[getIp] ip = {}",ia.getHostAddress());
			return ia.getHostAddress();
		} catch (UnknownHostException e) {
			e.printStackTrace();
			logger.warn("[WARN:getIp]", e);
		}
		return null;
	}
	
	/**
	 * 获取本机名称
	 * @return
	 */
	public static String getHostName(){
		try {
			InetAddress ia = InetAddress.getLocalHost();
			logger.info("[getIp] HostName = {}",ia.getHostName());
			return ia.getHostName();
		} catch (UnknownHostException e) {
			e.printStackTrace();
			logger.warn("[WARN:getIp]", e);
		}
		return null;
	}
	
	/**
	 * 获得客户端远程地址IP
	 * @param request
	 * @return
	 */
	public static String getRemoteAddr(HttpServletRequest request){
		String remoteAddr = request.getHeader("X-Real-IP");
        if (StringUtils.isNotBlank(remoteAddr)) {
        	remoteAddr = request.getHeader("X-Forwarded-For");
        }else if (StringUtils.isNotBlank(remoteAddr)) {
        	remoteAddr = request.getHeader("Proxy-Client-IP");
        }else if (StringUtils.isNotBlank(remoteAddr)) {
        	remoteAddr = request.getHeader("WL-Proxy-Client-IP");
        }
        return remoteAddr != null ? remoteAddr : request.getRemoteAddr();
	}
	
	/**
	 * 获取客户端主机名称
	 * @param request
	 * @return
	 */
	public static String getHostName(HttpServletRequest request){
		return request.getRemoteHost();
	}
	
	public static void main(String[] args) {
		getIp();
		getHostName();
	}
	
}
