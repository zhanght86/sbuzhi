package com.sbuzhi.website.mvc.ums.entity;

import com.sbuzhi.gg.web.entity.DataEntity;
/**
 * 
 * @author stealth.Lee
 * @date 2017年1月17日 下午3:58:45
 */
public class Pic extends DataEntity<Pic> {
	
	/**
	 * 类型[0:其它 1:男 2:女]
	 */
	public static final String TYPE_OTHER = "0";
	public static final String TYPE_BOY = "1";
	public static final String TYPE_GIRL = "2";

	/**
	 * url
	 */
	private String picUrl;
	
	/**
	 * 类型
	 */
	private String type;
	
	/**
	 * 名称
	 */
	private String name;
	
	public Pic() {
		super();
		this.type = TYPE_OTHER;
	}

	public Pic(String type) {
		super();
		this.type = type;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Pic [picUrl=" + picUrl + ", type=" + type + ", name=" + name
				+ ", insertBy=" + insertBy + ", insertDate=" + insertDate
				+ ", updateBy=" + updateBy + ", updateDate=" + updateDate
				+ ", remarks=" + remarks + ", delFlag=" + delFlag + ", id="
				+ id + ", isNewRecord=" + isNewRecord + "]";
	}

}
