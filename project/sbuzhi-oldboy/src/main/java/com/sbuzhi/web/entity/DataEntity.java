package com.sbuzhi.web.entity;

import com.sbuzhi.common.utils.IdGen;


public abstract class DataEntity<T> extends BaseEntity<T>{
	
	/**
     * 删除标识[0:删除]
     */
    public static final String DEL_FLAG_NORMAL = "0";
    
    /**
     * 删除标识[1:正常]
     */
    public static final String DEL_FLAG_DELETE = "1";
    
    /**
     * 删除标识[2:审核]
     */
    public static final String DEL_FLAG_AUDIT = "2";

    /**
     * 插入者
     */
    protected String insertBy;

    /**
     * 插入时间
     */
    protected String insertDate;

    /**
     * 更新者
     */
    protected String updateBy;

    /**
     * 更新时间
     */
    protected String updateDate;
    
    /**
     * 备注信息
     */
    protected String remarks;

    /**
     * 删除标识
     */
    protected String delFlag;

	public DataEntity() {
		super();
		this.delFlag = DEL_FLAG_DELETE;
	}

	public DataEntity(String id) {
		super(id);
	}
	
	/**
	 * 插入前执行
	 */
	@Override
	public void preInsert() {
		if(!useCustomId){
			setId(IdGen.uuid());
		}
	}

	/**
	 * 修改前执行
	 */
	@Override
	public void preUpdate() {
		
	}
    
}
