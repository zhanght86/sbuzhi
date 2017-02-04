package com.sbuzhi.gg.mvc.ims.dao;

import org.springframework.stereotype.Repository;

import com.sbuzhi.gg.mvc.ims.entity.Popularity;
import com.sbuzhi.gg.web.dao.CrudDao;
/**
 * 人气DAO
 * @author stealth.Lee
 * @date 2016年11月30日 上午10:51:39
 */
@Repository
@Deprecated
public interface PopularityDao extends CrudDao<Popularity> {
	
}
