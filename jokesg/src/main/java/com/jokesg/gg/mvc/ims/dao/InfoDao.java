package com.jokesg.gg.mvc.ims.dao;

import org.springframework.stereotype.Repository;

import com.jokesg.gg.mvc.ims.entity.UserInfo;
import com.jokesg.gg.web.dao.CrudDao;
/**
 * 用户信息DAO
 * @author stealth.Lee
 * @date 2016年11月22日 下午3:23:42
 */
@Repository
public interface InfoDao extends CrudDao<UserInfo> {
	
}
