package com.sbuzhi.gg.mvc.rms.entity;

import com.sbuzhi.gg.web.entity.VoEntity;
/**
 * 我的收藏/赞
 * @author stealth.Lee
 * @date 2016年11月23日 下午5:09:45
 */
public class Favorites extends VoEntity<Favorites> {
	
	/**
	 * 类型[1：收藏 2：赞]
	 */
	public static final String LIKE = "1";
	public static final String ZAN = "2";
	
	/**
	 * 用户ID
	 */
	private String userId;
	
	/**
	 * 视频ID
	 */
	private String jokesgId;
	
	/**
	 * 类型
	 */
	private String type;

	public Favorites() {
		super();
		this.type = LIKE;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Favorites [userId=" + userId + ", jokesgId=" + jokesgId
				+ ", type=" + type + "]";
	}
	
}
