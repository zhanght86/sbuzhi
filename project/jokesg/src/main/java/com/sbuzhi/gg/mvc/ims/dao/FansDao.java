package com.sbuzhi.gg.mvc.ims.dao;

import org.springframework.stereotype.Repository;

import com.sbuzhi.gg.mvc.ims.entity.Fans;
import com.sbuzhi.gg.web.dao.CrudDao;
/**
 * 粉丝DAO
 * @author Stealth.Lee
 * @date 2016年11月26日 下午9:22:11
 */
@Repository
public interface FansDao extends CrudDao<Fans> {

	/**
	 * 判断当前用户是否已经关注了当前视频作者
	 * @param fans
	 * @return
	 */
	public Fans isConcern(Fans fans);
	
	/**
	 * 判断当前用户是否已经关注了作者
	 * @param fans
	 * @return
	 */
	public Fans isConcern2(Fans fans);
	
	/**
	 * 获取粉丝/关注用户总数
	 * @param Fans.getUserId():获取粉丝总数
	 * @param Fans.getFansId():获取关注总数
	 * @return
	 */
	public int getFansCount(Fans Fans);
	
}
