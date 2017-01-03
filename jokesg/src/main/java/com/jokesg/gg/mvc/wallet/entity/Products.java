package com.jokesg.gg.mvc.wallet.entity;

import com.jokesg.gg.web.entity.DataEntity;
/**
 * 商品实体
 * @author stealth.Lee
 * @date 2016年12月5日 上午10:27:56
 */
public class Products extends DataEntity<Products> {
	
	/**
	 * 商品类型[1:站内商品 2：站外商品]
	 */
	public static final String PRODUCTS_INNER = "1";
	public static final String PRODUCTS_OUTER = "2";
	
	/**
	 * 商品名称
	 */
	private String name;
	
	/**
	 * 商品价格
	 */
	private String price;
	
	/**
	 * 商品真实价格
	 */
	private String ralPrice;
	
	/**
	 * 商品图片
	 */
	private String pic;
	
	/**
	 * 商品类型
	 */
	private String type;
	
	/**
	 * 库存[-1:无上限]
	 */
	private Integer stock;
	
	/**
	 * 排序
	 */
	private String order;
	
	private UserProducts userProducts;

	public Products() {
		super();
		this.type = PRODUCTS_INNER;
		this.stock = -1;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getRalPrice() {
		return ralPrice;
	}

	public void setRalPrice(String ralPrice) {
		this.ralPrice = ralPrice;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}
	
	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public UserProducts getUserProducts() {
		return userProducts;
	}

	public void setUserProducts(UserProducts userProducts) {
		this.userProducts = userProducts;
	}

	@Override
	public String toString() {
		return "Products [name=" + name + ", price=" + price + ", ralPrice="
				+ ralPrice + ", pic=" + pic + ", type=" + type + ", stock="
				+ stock + ", order=" + order + ", userProducts=" + userProducts
				+ ", insertBy=" + insertBy + ", insertDate=" + insertDate
				+ ", updateBy=" + updateBy + ", updateDate=" + updateDate
				+ ", remarks=" + remarks + ", delFlag=" + delFlag + ", id="
				+ id + ", isNewRecord=" + isNewRecord + "]";
	}
	
}
