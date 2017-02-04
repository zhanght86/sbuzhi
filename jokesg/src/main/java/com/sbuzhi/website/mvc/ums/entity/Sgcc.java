package com.sbuzhi.website.mvc.ums.entity;

import com.sbuzhi.gg.web.entity.DataEntity;
/**
 * 
 * @author stealth.Lee
 * @date 2017年1月17日 上午11:23:10
 */
public class Sgcc extends DataEntity<Sgcc>{
	/**
	 * IP
	 */
	private String ip;
	
	/**
	 * 姓名
	 */
	private String name;
	
	/**
	 * 电子邮箱
	 */
	private String email;
	
	/**
	 * 标题
	 */
	private String title;
	
	/**
	 * 内容
	 */
	private String content;

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Sgcc [ip=" + ip + ", name=" + name + ", email=" + email
				+ ", title=" + title + ", content=" + content + ", insertBy="
				+ insertBy + ", insertDate=" + insertDate + ", updateBy="
				+ updateBy + ", updateDate=" + updateDate + ", remarks="
				+ remarks + ", delFlag=" + delFlag + ", id=" + id
				+ ", isNewRecord=" + isNewRecord + "]";
	}
	
}
