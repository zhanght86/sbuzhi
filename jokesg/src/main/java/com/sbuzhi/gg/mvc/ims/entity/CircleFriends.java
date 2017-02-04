package com.sbuzhi.gg.mvc.ims.entity;

import com.sbuzhi.gg.mvc.sys.entity.User;
import com.sbuzhi.gg.web.entity.DataEntity;
/**
 * 用户动态(朋友圈)实体
 * @author stealth.Lee
 * @date 2016年12月5日 下午4:42:32
 */
public class CircleFriends extends DataEntity<CircleFriends> {
	
	/**
	 * 用户ID
	 */
	private String UserId;
	
	/**
	 * 内容
	 */
	private String Content;
	
	/**
	 * 图片链接
	 */
	private String PicUrl;
	
	/**
	 * 来源
	 */
	private String Source;
	
	/**
	 * 用户
	 */
	private User user;
	
	public CircleFriends() {
		super();
	}

	public String getUserId() {
		return UserId;
	}

	public void setUserId(String userId) {
		UserId = userId;
	}

	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
	}

	public String getPicUrl() {
		return PicUrl;
	}

	public void setPicUrl(String picUrl) {
		PicUrl = picUrl;
	}

	public String getSource() {
		return Source;
	}

	public void setSource(String source) {
		Source = source;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "CircleFriends [UserId=" + UserId + ", Content=" + Content
				+ ", PicUrl=" + PicUrl + ", Source=" + Source + ", user="
				+ user + ", insertBy=" + insertBy + ", insertDate="
				+ insertDate + ", updateBy=" + updateBy + ", updateDate="
				+ updateDate + ", remarks=" + remarks + ", delFlag=" + delFlag
				+ ", id=" + id + ", isNewRecord=" + isNewRecord + "]";
	}
	
}
