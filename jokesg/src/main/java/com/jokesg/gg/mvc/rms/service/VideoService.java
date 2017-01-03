package com.jokesg.gg.mvc.rms.service;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jokesg.gg.mvc.rms.dao.VideoDao;
import com.jokesg.gg.mvc.rms.entity.Jokesg;
import com.jokesg.gg.mvc.rms.vo.JokesgMenu;
import com.jokesg.gg.web.service.CrudService;
/**
 * 视频Service
 * @author Stealth.Lee
 * @date 2016年11月10日 下午8:12:14
 */
/**
 * 视频Service
 * @author Stealth.Lee
 * @date 2016年11月10日 下午8:12:14
 */
@Service
@Transactional(readOnly = true)
public class VideoService extends CrudService<VideoDao, Jokesg>{

	/**
	 * 上传一个视频，
	 * 首先插入一条Jokesg表记录，然后添加一条视频分类表记录，
	 * 构建OSS，将视屏上传到OSS中。将oss链接地址存到Jokesg表中的Href记录
	 * 所属企业，标题，描述，类型 ，是否公开（加密密码） ，··分类
	 * @throws IOException 
	 */
	@Transactional(readOnly = false)
	public void saveVideo(Jokesg jokesg) throws IOException{
		dao.insert(jokesg);
		dao.addJokesgMenu(jokesg);
	}
	
	/**
	 * 根据用户ID获取当前用户所拥有的视频
	 * @param userId
	 * @return
	 */
	public List<Jokesg> findUserIdByJokesg(String userId){
		return dao.findList(userId);
	}
	
	public List<Jokesg> getNewest(){
		return dao.getNewest();
	}
	
	public List<Jokesg> getHot(){
		return dao.getHot();
	}
	
	public JokesgMenu getMenuType(String jokesgId){
		return dao.getVideoMenu(jokesgId);
	}
	
	@Transactional(readOnly = false)
	public boolean update(Jokesg jokesg){
		jokesg.preUpdate();
		int result = dao.update(jokesg);
		if(result > 0){
			return true;
		}
		return false;
	}
	
	/**
	 * 根据菜单类型分页查询视频
	 * @param jokesgMenu
	 * @return
	 */
	public List<Jokesg> getVideoByMenuId(JokesgMenu jokesgMenu){
		return dao.getVideoByMenuId(jokesgMenu);
	}
	
	public List<Jokesg> getVideoByMenuId2(JokesgMenu jokesgMenu){
		return dao.getVideoByMenuId2(jokesgMenu);
	}
	
	@Transactional(readOnly = false)
	public void playAmount(String id){
		dao.playAmount(id);
	}
	
	public int count(JokesgMenu jokesgMenu){
		return dao.countVideoByMenuId(jokesgMenu);
	}
}
