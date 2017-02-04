package com.sbuzhi.gg.web.entity;
/**
 * 树Entity类
 * @author stealth.Lee
 * @date 2016年11月17日 下午4:26:42
 */
public abstract class TreeEntity<T> extends DataEntity<T> {

	/**
	 * 父级ID
	 */
	private String ParentId;
	
	/**
	 * 所有父级ID
	 */
	private String ParentIds;
	
	/**
	 * 菜单名称
	 */
	private String Name;
	
	/**
	 * 排序
	 */
	private String Index;

	public String getParentId() {
		return ParentId;
	}

	public void setParentId(String parentId) {
		ParentId = parentId;
	}

	public String getParentIds() {
		return ParentIds;
	}

	public void setParentIds(String parentIds) {
		ParentIds = parentIds;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getIndex() {
		return Index;
	}

	public void setIndex(String index) {
		Index = index;
	}
	
}
