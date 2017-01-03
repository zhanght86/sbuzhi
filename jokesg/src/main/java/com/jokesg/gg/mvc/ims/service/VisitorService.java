package com.jokesg.gg.mvc.ims.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jokesg.gg.mvc.ims.dao.VisitorDao;
import com.jokesg.gg.mvc.ims.entity.Visitor;
import com.jokesg.gg.web.service.CrudService;
/**
 * 访客Service
 * @author stealth.Lee
 * @date 2016年12月1日 下午5:49:24
 */
@Service
@Transactional(readOnly = true)
public class VisitorService extends CrudService<VisitorDao, Visitor> {
	
	@Override
	@Transactional(readOnly = false)
	public void save(Visitor entity) {
		if(dao.get(entity) == null){
			entity.preInsert();
			dao.insert(entity);
		} else {
			entity.preUpdate();
			dao.update(entity);
		}
	}
	
}
