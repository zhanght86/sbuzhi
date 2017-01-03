package com.jokesg.gg.web.entity;

import org.apache.commons.lang3.StringUtils;

import com.jokesg.gg.common.utils.Const;
import com.jokesg.gg.common.utils.DateUtils;
import com.jokesg.gg.common.utils.IdGen;
import com.jokesg.gg.mvc.sys.entity.User;
import com.jokesg.gg.mvc.sys.utils.UserUtils;

/**
 * 数据实体支持类
 * Created by Stealth.Lee on 2016/9/10.
 */
public abstract class DataEntity<T> extends BaseEntity<T> {
	
    /**
     * 删除标记[0:删除; 1：未删除;  2:审核]
     */
    public static final String DEL_FLAG_NORMAL = "0";
    public static final String DEL_FLAG_DELETE = "1";
    public static final String DEL_FLAG_AUDIT = "2";

    /**
     * 创建者
     */
    protected String insertBy;

    /**
     * 创建日期
     */
    protected String insertDate;

    /**
     * 更新者
     */
    protected String updateBy;

    /**
     * 更新日期
     */
    protected String updateDate;
    
    /**
     * 备注
     */
    protected String remarks;

    /**
     * 删除标记
     */
    protected String delFlag;

    /**
     * 删除标记：1
     */
    public DataEntity() {
        super();
        insertBy = Const.USER;
    	updateBy = Const.USER;
        this.delFlag = DEL_FLAG_DELETE;
    }

    /**
     * 插入之前执行此方法，需要手动调用。
     * 设置部分数据库字段初始值
     */
    @Override
    public void preInsert() {
        if(this.isNewRecord){
            setId(IdGen.uuid());
        }
        User user = UserUtils.getUser();
        if(StringUtils.isNotBlank(user.getId())){
        	insertBy = user.getId();
        	insertBy = user.getId();
        }
        insertDate = DateUtils.getTime();
        updateDate = insertDate;
    }

    /**
     * 更新之前执行此方法，需手动调用
     * 设置部分数据字段初始值
     */
    @Override
    public void preUpdate() {
    	 User user = UserUtils.getUser();
         if(StringUtils.isNotBlank(user.getId())){
            updateBy = user.getId();
         }
    	updateDate = DateUtils.getTime();
    }

    public DataEntity(String id) {
        super(id);
    }


    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public String getInsertDate() {
        return insertDate;
    }

    public void setInsertDate(String insertDate) {
        this.insertDate = insertDate;
    }

    public String getInsertBy() {
        return insertBy;
    }

    public void setInsertBy(String insertBy) {
        this.insertBy = insertBy;
    }

    public String getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }
}
