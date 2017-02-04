package com.sbuzhi.gg.web.entity;

import org.apache.commons.lang3.StringUtils;

import com.sbuzhi.gg.components.datavalidation.annotation.Valid;


/**
 * 实体支持类
 * Created by Stealth.Lee on 2016/9/10.
 */
@Valid
public abstract class BaseEntity<T> {

    /**
     * 实体编号(唯一标识)
     */
    protected String id;

    /**
     * 是否是新纪录(默认true),调用setter方法设置新纪录，使用自定义ID
     */
    protected boolean isNewRecord = true;

    public BaseEntity() {

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
     * 是否插入新记录,根据ID更新 setIsNewRecord(false)后使用自定义ID
     * @return ID为空 返回false 执行插入
     */
    public boolean isNewRecord() {
    	if(StringUtils.isEmpty(getId()))
    		return isNewRecord = true;
    	return isNewRecord = false;
    }

    public void setIsNewRecord(boolean isNewRecord) {
        this.isNewRecord = isNewRecord;
    }

}
