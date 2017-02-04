package com.sbuzhi.gg.mvc.rms.entity;

import com.sbuzhi.gg.web.entity.DataEntity;

public class Videos extends DataEntity<Videos> {
	
	/**
	 * 视频类型[1:预告 2:正片]
	 */
	public static final String TRAILER = "1";
	public static final String FILM = "2";
	
	/**
	 * 专辑ID
	 */
	private String albumId;
	
	/**
	 * 视频名称
	 */
	private String name;
	
	/**
	 * 子标题
	 */
	private String subName;
	
	/**
	 * 视频连接
	 */
	private String url;
	
	/**
	 * 图片链接
	 */
	private String picUrl;
	
	/**
	 * 视频类型
	 */
	private String type;
	
	/**
	 * 语言
	 */
	private String language;
	
	public Videos() {
		super();
		this.type = FILM;
	}

	public String getAlbumId() {
		return albumId;
	}

	public void setAlbumId(String albumId) {
		this.albumId = albumId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSubName() {
		return subName;
	}

	public void setSubName(String subName) {
		this.subName = subName;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getPicUrl() {
		return picUrl;
	}

	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	@Override
	public String toString() {
		return "Videos [albumId=" + albumId + ", name=" + name + ", subName="
				+ subName + ", url=" + url + ", picUrl=" + picUrl + ", type="
				+ type + ", language=" + language + ", insertBy=" + insertBy
				+ ", insertDate=" + insertDate + ", updateBy=" + updateBy
				+ ", updateDate=" + updateDate + ", remarks=" + remarks
				+ ", delFlag=" + delFlag + ", id=" + id + ", isNewRecord="
				+ isNewRecord + "]";
	}
	
}
