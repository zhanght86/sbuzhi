package com.sbuzhi.gg.mvc.wallet.entity;

import com.sbuzhi.gg.web.entity.DataEntity;
/**
 * 用户商品实体
 * @author stealth.Lee
 * @date 2016年12月5日 上午10:41:27
 */
public class UserProducts extends DataEntity<UserProducts> {
	
	/**
	 * 用户ID
	 */
	private String UserId;
	
	/**
	 * 商品ID
	 */
	private String ProductsId;
	
	/**
	 * 数量
	 */
	private String Number;
	
	public UserProducts() {
		super();
	}

	public String getUserId() {
		return UserId;
	}

	public void setUserId(String userId) {
		UserId = userId;
	}

	public String getProductsId() {
		return ProductsId;
	}

	public void setProductsId(String productsId) {
		ProductsId = productsId;
	}

	public String getNumber() {
		return Number;
	}

	public void setNumber(String number) {
		Number = number;
	}

	@Override
	public String toString() {
		return "UserProducts [UserId=" + UserId + ", ProductsId=" + ProductsId
				+ ", Number=" + Number + ", insertBy=" + insertBy
				+ ", insertDate=" + insertDate + ", updateBy=" + updateBy
				+ ", updateDate=" + updateDate + ", remarks=" + remarks
				+ ", delFlag=" + delFlag + ", id=" + id + ", isNewRecord="
				+ isNewRecord + "]";
	}
	
}
