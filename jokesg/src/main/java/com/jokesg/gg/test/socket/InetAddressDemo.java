package com.jokesg.gg.test.socket;

import java.net.InetAddress;
import java.net.UnknownHostException;

/**
 * InetAddress
 * @author stealth.Lee
 * @date 2016年12月29日 下午3:25:55
 */
public class InetAddressDemo {
	
	public static void main(String[] args) {
		try {
			InetAddress address = InetAddress.getLocalHost();
			System.out.println(address);
			InetAddress address2 = InetAddress.getByName("www.baidu.com");
			System.out.println(address2);
		} catch (UnknownHostException e) {
			
		}
	}
	
}
