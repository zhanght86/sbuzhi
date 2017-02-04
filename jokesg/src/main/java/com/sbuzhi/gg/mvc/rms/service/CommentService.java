package com.sbuzhi.gg.mvc.rms.service;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sbuzhi.gg.mvc.rms.dao.CommentDao;
import com.sbuzhi.gg.mvc.rms.entity.Comment;
import com.sbuzhi.gg.web.service.CrudService;
/**
 * 评论Service
 * @author stealth.Lee
 * @date 2016年12月12日 下午5:45:06
 */
@Service
@Transactional(readOnly = true)
public class CommentService extends CrudService<CommentDao, Comment> {
	
	@Override
	@Transactional(readOnly = false)
	public void save(Comment entity) {
		if(StringUtils.isBlank(entity.getId())){
			entity.preInsert();
			dao.insert(entity);
		} else {
			entity.preUpdate();
			dao.delete(entity);
		}
	}
	
	public int count(Comment entity){
		return dao.count(entity);
	}

}
