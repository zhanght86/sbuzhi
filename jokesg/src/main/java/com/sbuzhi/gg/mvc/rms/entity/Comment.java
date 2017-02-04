package com.sbuzhi.gg.mvc.rms.entity;

import com.sbuzhi.gg.mvc.sys.entity.User;
import com.sbuzhi.gg.web.entity.DataEntity;
import com.sbuzhi.gg.web.entity.Paging;
/**
 * 视频评论实体
 * @author stealth.Lee
 * @date 2016年12月12日 下午5:39:23
 */
public class Comment extends DataEntity<Comment> {
	
	/**
	 * 视频ID
	 */
	private String jokesgId;
	
	/**
	 * 视频ID
	 */
	private String videosId;
	
	/**
	 * 用户ID
	 */
	private String userId;
	
	/**
	 * 内容
	 */
	private String content;
	
	/**
	 * 用户列表
	 */
	private User user;
	
	/**
	 * 分页查询
	 */
	private Paging paging;
	
	public Comment() {
		super();
	}

	public Comment(Paging paging) {
		this();
		this.paging = paging;
	}

	public String getJokesgId() {
		return jokesgId;
	}

	public void setJokesgId(String jokesgId) {
		this.jokesgId = jokesgId;
	}

	public String getVideosId() {
		return videosId;
	}

	public void setVideosId(String videosId) {
		this.videosId = videosId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Paging getPaging() {
		return paging;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	@Override
	public String toString() {
		return "Comment [jokesgId=" + jokesgId + ", videosId=" + videosId
				+ ", userId=" + userId + ", content=" + content + ", user="
				+ user + ", insertBy=" + insertBy + ", insertDate="
				+ insertDate + ", updateBy=" + updateBy + ", updateDate="
				+ updateDate + ", remarks=" + remarks + ", delFlag=" + delFlag
				+ ", id=" + id + ", isNewRecord=" + isNewRecord + "]";
	}
	
}
