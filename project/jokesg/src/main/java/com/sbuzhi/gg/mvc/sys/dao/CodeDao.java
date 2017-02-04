package com.sbuzhi.gg.mvc.sys.dao;

import org.springframework.stereotype.Repository;

import com.sbuzhi.gg.mvc.sys.entity.Code;
import com.sbuzhi.gg.web.dao.CrudDao;

/**
 * 状态码DAO
 * @author Stealth.Lee
 * @date 2016年10月22日 上午11:05:27
 */
@Repository
public interface CodeDao extends CrudDao<Code> {
	
	/**
	 * 根据状态吗查询
	 * @return
	 */
	Code getByCode(String code);
	
	/**
	 * 删除过期验证码
	 * @return
	 */
	int delOverdueCode();

}
