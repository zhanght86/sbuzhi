package com.jokesg.gg.shiro.session;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.SessionListener;
/**
 * 会话监听器
 * @author skies Lee
 * @date 2016年10月14日 下午3:00:03
 */
public class MySessionListener1 implements SessionListener {

	/**
	 * 会话创建时触发
	 */
	@Override
	public void onStart(Session session) {
		System.out.println("Session crestion:"+session.getId());
	}

	/**
	 * 退出/过期时触发
	 */
	@Override
	public void onStop(Session session) {
		System.out.println("Session destrution:"+session.getId());
	}

	/**
	 * 过期时触发
	 */
	@Override
	public void onExpiration(Session session) {
		System.out.println("Session expried:"+session.getId());
	}

}
