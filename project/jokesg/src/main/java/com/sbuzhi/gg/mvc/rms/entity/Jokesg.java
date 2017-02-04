package com.sbuzhi.gg.mvc.rms.entity;

import com.sbuzhi.gg.web.entity.DataEntity;
import com.sbuzhi.gg.web.entity.Paging;

/**
 * Jokesg实体
 * @author Stealth.Lee
 * @date 2016年11月9日 下午8:15:33
 */
public class Jokesg extends DataEntity<Jokesg>{
	
	/**
	 * 视频类型[1:原创 2:转发]
	 */
	public static final String VIDEO_ROIGINAL = "1";
	public static final String VIDEO_FORWARD = "2";
	
	/**
	 * 是否公开[0:仅自己可见 1:所有人可见 2:输入密码可见]
	 */
	public static final String VIDEO_SHUT = "0";
	public static final String VIDEO_PUBLIC = "1";
	public static final String VIDEO_ENCRYPTED = "2";

	/**
	 * 用户ID
	 */
	private String userId;
	
	/**
	 * 企业ID
	 */
	private String companyId;
	
	/**
	 * 名称
	 */
	private String name;
	
	/**
	 * 链接
	 */
	private String href;
	
	/**
	 * 图片URL
	 */
	private String picUrl;
	
	/**
	 * 原创作者
	 */
	private String userBy;
	
	/**
	 * 类型
	 */
	private String type;
	
	/**
	 * 是否公开
	 */
	private String isOpenly;
	
	/**
	 * 加密密码：当公开类型（IsOpenly）为输入密码可见即`VIDEO_ENCRYPTED`时，此字段必须填写
	 */
	private String pwd;
	
	/**
	 * 
	 */
	private String menuId;
	
	/**
	 * 播放量
	 */
	private String playAmount;
	
	private Paging paging;

	public Jokesg(){
		super();
		this.playAmount = "1";
		this.type = VIDEO_ROIGINAL;
		this.isOpenly = VIDEO_PUBLIC;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getHref() {
		return href;
	}

	public void setHref(String href) {
		this.href = href;
	}

	public String getPicUrl() {
		return picUrl;
	}

	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}

	public String getUserBy() {
		return userBy;
	}

	public void setUserBy(String userBy) {
		this.userBy = userBy;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getIsOpenly() {
		return isOpenly;
	}

	public void setIsOpenly(String isOpenly) {
		this.isOpenly = isOpenly;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getPlayAmount() {
		return playAmount;
	}

	public void setPlayAmount(String playAmount) {
		this.playAmount = playAmount;
	}
	
	public String getMenuId() {
		return menuId;
	}

	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}

	public Paging getPaging() {
		return paging;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	@Override
	public String toString() {
		return "Jokesg [userId=" + userId + ", companyId=" + companyId
				+ ", name=" + name + ", href=" + href + ", picUrl=" + picUrl
				+ ", userBy=" + userBy + ", type=" + type + ", isOpenly="
				+ isOpenly + ", pwd=" + pwd + ", menuId=" + menuId
				+ ", playAmount=" + playAmount + ", insertBy=" + insertBy
				+ ", insertDate=" + insertDate + ", updateBy=" + updateBy
				+ ", updateDate=" + updateDate + ", remarks=" + remarks
				+ ", delFlag=" + delFlag + ", id=" + id + ", isNewRecord="
				+ isNewRecord + "]";
	}

}
