package com.sbuzhi.gg.mvc.rms.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sbuzhi.gg.mvc.rms.entity.Jokesg;
import com.sbuzhi.gg.mvc.rms.vo.JokesgMenu;
import com.sbuzhi.gg.web.dao.CrudDao;

/**
 * JokesgDao
 * @author Stealth.Lee
 * @date 2016年11月9日 下午8:47:32
 */
@Repository
public interface VideoDao extends CrudDao<Jokesg> {
	
	/**
	 * 添加视频菜单分类
	 * 视频和菜单之间的关系是多对多
	 * @param jokesg
	 * @return
	 */
	public int addJokesgMenu(Jokesg jokesg);
	
	/**
	 * 随机获取主页最新八条视频
	 * @return
	 */
	public List<Jokesg> getNewest();
	
	/**
	 * 随机获取主页最热八条视频
	 */
	public List<Jokesg> getHot();
	
	/**
	 * 根据视频ID获取视频菜单
	 * @param jokesgId
	 * @return
	 */
	public JokesgMenu getVideoMenu(String jokesgId);
	
	/**
	 * 根据菜单类型查询视频（时间）
	 * @param menuId
	 * @return
	 */
	public List<Jokesg> getVideoByMenuId(JokesgMenu jokesgMenu);
	
	/**
	 * 根据菜单类型查询视频（点击率）
	 * @param menuId
	 * @return
	 */
	public List<Jokesg> getVideoByMenuId2(JokesgMenu jokesgMenu);
	
	/**
	 * 根据菜单类型查询当前菜单下视频的总数
	 * @param menuId
	 * @return
	 */
	public int countVideoByMenuId(JokesgMenu jokesgMenu);
	
	/**
	 * 播放量+1
	 * @param id 视频ID
	 * @return
	 */
	public int playAmount(String id);
	
}
