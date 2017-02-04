package com.jokesg.gg.shiro.session;

import java.io.Serializable;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.CachingSessionDAO;
import org.springframework.jdbc.core.JdbcTemplate;

import com.sbuzhi.gg.common.utils.JdbcTemplateUtils;
import com.sbuzhi.gg.common.utils.ObjectUtil;

/**
 * 自定义SessionDao,会话存储/持久化
 * 
 * @author skies Lee
 * @date 2016年10月14日 下午3:59:23
 */
public class MySessionDao extends CachingSessionDAO {

	private JdbcTemplate jdbcTemplate = JdbcTemplateUtils.jdbcTemplate();

	/**
	 * 修改会话
	 */
	@Override
	protected void doUpdate(Session session) {
		System.out.println("开始修改会话");

	}

	/**
	 * 删除会话
	 */
	@Override
	protected void doDelete(Session session) {
		System.out.println("开始删除会话");

	}

	/**
	 * 创建会话
	 */
	@Override
	protected Serializable doCreate(Session session) {
		
		System.out.println("开始创建会话");
		
		// 产生SessionId唯一标识
		Serializable sessionId = generateSessionId(session);
        assignSessionId(session, sessionId);  
        String sql = "insert into session(id, session) values(?,?)";  
        jdbcTemplate.update(sql, sessionId, ObjectUtil.objectToBytes(session));  
        return session.getId();
	}

	/**
	 * 读取会话
	 */
	@Override
	protected Session doReadSession(Serializable sessionId) {
		System.out.println("开始读取会话");

		return null;
	}

}
