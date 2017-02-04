package com.sbuzhi.gg.mvc.rms.entity;

import com.sbuzhi.gg.web.entity.DataEntity;
/**
 * 视频VO
 * @author stealth.Lee
 * @date 2016年12月9日 下午4:40:10
 */
public class Album extends DataEntity<Album>{
	
	/**
	 * 视频类型[1:电视剧 2:电影 3:音乐 4:jokesg 0:其它]
	 */
	public static final String TV = "1";
	public static final String MOVIE = "2";
	public static final String MUSIC = "3";
	public static final String JOKESG = "4";
	public static final String OTHER = "0";

	/**
	 * 专辑名称
	 */
	private String name;
	
	/**
	 * 主演
	 */
	private String actor;
	
	/**
	 * 导演
	 */
	private String director;
	
	/**
	 * 专辑连接
	 */
	private String url;
	
	/**
	 * 图片链接
	 */
	private String picUrl;
	
	/**
	 * 语言
	 */
	private String language;
	
	/**
	 * 评分
	 */
	private String score;
	
	/**
	 * 视频类型
	 */
	private String videoType;
	
	/**
	 * 年份
	 */
	private String year;
	
	/**
	 * 集数
	 */
	private String cnt;
	
	/**
	 * 专辑下视频列表
	 */
	private Videos videos;
	
	public Album() {
		super();
		this.videoType = JOKESG;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
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

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getVideoType() {
		return videoType;
	}

	public void setVideoType(String videoType) {
		this.videoType = videoType;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getCnt() {
		return cnt;
	}

	public void setCnt(String cnt) {
		this.cnt = cnt;
	}
	
	public Videos getVideos() {
		return videos;
	}

	public void setVideos(Videos videos) {
		this.videos = videos;
	}

	@Override
	public String toString() {
		return "Album [name=" + name + ", actor=" + actor + ", director="
				+ director + ", url=" + url + ", picUrl=" + picUrl
				+ ", language=" + language + ", score=" + score
				+ ", videoType=" + videoType + ", year=" + year + ", cnt="
				+ cnt + ", videos=" + videos + ", insertBy=" + insertBy
				+ ", insertDate=" + insertDate + ", updateBy=" + updateBy
				+ ", updateDate=" + updateDate + ", remarks=" + remarks
				+ ", delFlag=" + delFlag + ", id=" + id + ", isNewRecord="
				+ isNewRecord + "]";
	}

}
