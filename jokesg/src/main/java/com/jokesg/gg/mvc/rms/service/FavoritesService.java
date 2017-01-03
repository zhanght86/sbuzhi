package com.jokesg.gg.mvc.rms.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jokesg.gg.common.utils.ObjectUtil;
import com.jokesg.gg.mvc.rms.dao.FavoritesDao;
import com.jokesg.gg.mvc.rms.entity.Favorites;
import com.jokesg.gg.web.service.BaseService;
/**
 * 我的收藏Service
 * @author stealth.Lee
 * @date 2016年11月23日 下午5:32:39
 */
@Service
@Transactional(readOnly = true)
public class FavoritesService extends BaseService {
	
	@Resource
	private FavoritesDao favoritesDao;
	
	public List<Favorites> findList(Favorites favorites){
		return favoritesDao.findList(favorites);
	}
	
	/**
	 * 获取收藏/赞的类型
	 * @param favorites
	 * @return
	 */
	public List<String> getType(Favorites favorites){
		return favoritesDao.getType(favorites);
	}
	
	/**
	 * 收藏/赞、取消收藏/取消赞
	 * @param favorites
	 */
	@Transactional(readOnly = false)
	public int favorites(Favorites favorites){
		Favorites favorite = favoritesDao.get(favorites);
		if(ObjectUtil.isAllBlank(favorite)){
			favoritesDao.insert(favorites);
			return 1;
		}else{
			favoritesDao.delete(favorites);
			return 0;
		}
	}

	/**
	 * 获取当前视频的收藏/赞总数
	 * @param favorites
	 * @return
	 */
	public int getConut(Favorites favorites){
		return favoritesDao.count(favorites);
	}
	
}
