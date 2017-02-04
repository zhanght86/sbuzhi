package com.sbuzhi.gg.mvc.ims.dao;

import org.springframework.stereotype.Repository;

import com.sbuzhi.gg.mvc.ims.entity.Visitor;
import com.sbuzhi.gg.web.dao.CrudDao;
/**
 * 访客DAO
 * @author stealth.Lee
 * @date 2016年12月1日 下午5:48:32
 */
@Repository
public interface VisitorDao extends CrudDao<Visitor> {

}
