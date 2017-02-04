package com.sbuzhi.website.mvc.ums.entity;

import com.sbuzhi.gg.web.entity.DataEntity;

/**
 * 首页顶部大图实体
 * @author stealth.Lee
 * @date 2017年1月9日 下午2:50:54
 */
public class TopPic extends DataEntity<TopPic>{
	
	/**
	 * 用户ID
	 */
	private String UserId;
	
	/**
	 * 图片路径
	 */
	private String Pic;
	
	/**
	 * 图片标题
	 */
	private String Title;
	
	/**
	 * 图片内容
	 */
	private String Content;
	
	/**
	 * 按钮一
	 */
	private String Button1;
	
	/**
	 * 按钮二
	 */
	private String Button2;

	public TopPic() {
		super();
	}

	public String getUserId() {
		return UserId;
	}

	public void setUserId(String userId) {
		UserId = userId;
	}

	public String getPic() {
		return Pic;
	}

	public void setPic(String pic) {
		Pic = pic;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
	}

	public String getButton1() {
		return Button1;
	}

	public void setButton1(String button1) {
		Button1 = button1;
	}

	public String getButton2() {
		return Button2;
	}

	public void setButton2(String button2) {
		Button2 = button2;
	}

	@Override
	public String toString() {
		return "TopPic [UserId=" + UserId + ", Pic=" + Pic + ", Title=" + Title
				+ ", Content=" + Content + ", Button1=" + Button1
				+ ", Button2=" + Button2 + ", insertBy=" + insertBy
				+ ", insertDate=" + insertDate + ", updateBy=" + updateBy
				+ ", updateDate=" + updateDate + ", remarks=" + remarks
				+ ", delFlag=" + delFlag + ", id=" + id + ", isNewRecord="
				+ isNewRecord + "]";
	}
	
}