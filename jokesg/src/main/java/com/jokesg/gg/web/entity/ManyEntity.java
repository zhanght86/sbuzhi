package com.jokesg.gg.web.entity;

import org.apache.commons.lang3.StringUtils;

import com.jokesg.gg.common.utils.DateUtils;
import com.jokesg.gg.mvc.sys.entity.User;
import com.jokesg.gg.mvc.sys.utils.UserUtils;

/**
 * 多对多实体
 * @author stealth.Lee
 * @date 2016年11月23日 下午5:05:04
 */
public class ManyEntity<T> extends BaseEntity<T> {

    /**
     * 更新者
     */
    protected String updateBy;

    /**
     * 更新日期
     */
    protected String updateDate;
	
	@Override
	public void preInsert() {
		
	}

	@Override
	public void preUpdate() {
		User user = UserUtils.getUser();
        if(StringUtils.isNotBlank(user.getId())){
           updateBy = user.getId();
        }
        updateDate = DateUtils.getTime();
	}

	public String getUpdateBy() {
		return updateBy;
	}

	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}

	public String getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}
	
	

}
