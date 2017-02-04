package com.sbuzhi.gg.mvc.rms.dao;

import org.springframework.stereotype.Repository;

import com.sbuzhi.gg.mvc.rms.entity.Comment;
import com.sbuzhi.gg.web.dao.CrudDao;
/**
 * 评论DAO
 * @author stealth.Lee
 * @date 2016年12月12日 下午5:44:19
 */
@Repository
public interface CommentDao extends CrudDao<Comment> {
	
	/**
	 * 视频有效总评论数
	 * @param comment
	 * @return
	 */
	public int count(Comment comment);

}
