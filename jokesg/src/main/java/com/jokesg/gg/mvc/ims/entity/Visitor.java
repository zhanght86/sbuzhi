package com.jokesg.gg.mvc.ims.entity;

import com.jokesg.gg.mvc.sys.entity.User;
import com.jokesg.gg.web.entity.DataEntity;
/**
 * 访客实体
 * @author stealth.Lee
 * @date 2016年12月1日 下午5:46:17
 */
public class Visitor extends DataEntity<Visitor> {
	
	/**
	 * 用户ID
	 */
	private String userId;
	
	/**
	 * 访客ID
	 */
	private String visitorId;
	
	private User user;
	
	public Visitor() {
		super();
	}

	public Visitor(String userId, String visitorId) {
		super();
		this.userId = userId;
		this.visitorId = visitorId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getVisitorId() {
		return visitorId;
	}

	public void setVisitorId(String visitorId) {
		this.visitorId = visitorId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Visitor [userId=" + userId + ", visitorId=" + visitorId
				+ ", user=" + user + ", insertBy=" + insertBy + ", insertDate="
				+ insertDate + ", updateBy=" + updateBy + ", updateDate="
				+ updateDate + ", remarks=" + remarks + ", delFlag=" + delFlag
				+ ", id=" + id + ", isNewRecord=" + isNewRecord + "]";
	}
	
}
