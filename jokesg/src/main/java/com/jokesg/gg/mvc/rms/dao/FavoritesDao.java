package com.jokesg.gg.mvc.rms.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jokesg.gg.mvc.rms.entity.Favorites;
import com.jokesg.gg.web.dao.CrudDao;
/**
 * 我的收藏DAO
 * @author stealth.Lee
 * @date 2016年11月24日 上午8:55:23
 */
@Repository
public interface FavoritesDao extends CrudDao<Favorites> {

	/**
	 * 获取收藏/赞的类型，前天根据是否取到该类型从而显示是否已经点赞或已经收藏
	 * @param favorites
	 * @return
	 */
	public List<String> getType(Favorites favorites);
	
	/**
	 * 获取视频的收藏/赞总数
	 * @param favorites
	 * @return
	 */
	public int count(Favorites favorites);
	
}
