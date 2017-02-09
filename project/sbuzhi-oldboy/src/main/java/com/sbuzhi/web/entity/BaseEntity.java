package com.sbuzhi.web.entity;
/**
 * Entity支持类
 * @author stealth.Lee
 * @date 2017年2月7日 下午2:27:51
 */
public abstract class BaseEntity<T> {
	
	/**
	 * 实体编号（唯一标识）
	 */
	protected String id;
	
	/**
	 * 是否使用自定义ID:默认false，不使用
	 */
	protected boolean useCustomId = false;

	public BaseEntity() {
		super();
	}

	public BaseEntity(String id) {
		super();
		this.id = id;
	}

	/**
     * 插入之前执行此方法
     */
    public abstract void preInsert();

    /**
     * 更新之前执行此方法
     */
    public abstract void preUpdate();

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	/**
	 * 是否使用自定义Id
	 * @return
	 */
	public boolean isUseCustomId() {
		return useCustomId;
	}

	public void setUseCustomId(boolean useCustomId) {
		this.useCustomId = useCustomId;
	}
	
}
