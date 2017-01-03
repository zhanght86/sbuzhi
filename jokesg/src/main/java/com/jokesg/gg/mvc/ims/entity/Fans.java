package com.jokesg.gg.mvc.ims.entity;

import com.jokesg.gg.web.entity.DataEntity;
/**
 * 粉丝实体
 * @author Stealth.Lee
 * @date 2016年11月26日 下午9:16:18
 */
public class Fans extends DataEntity<Fans> {
	
	/**
	 * 粉丝ID
	 */
	private String fansId;
	
	/**
	 * 被关注用户Id：
	 */
	private String userId;

	/**
	 * 视频Id
	 */
	private String jokesgId;
	
	public String getFansId() {
		return fansId;
	}

	public void setFansId(String fansId) {
		this.fansId = fansId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getJokesgId() {
		return jokesgId;
	}

	public void setJokesgId(String jokesgId) {
		this.jokesgId = jokesgId;
	}
	
}
