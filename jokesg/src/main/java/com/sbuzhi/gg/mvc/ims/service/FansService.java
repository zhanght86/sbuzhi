package com.sbuzhi.gg.mvc.ims.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sbuzhi.gg.mvc.cms.dao.UsersDao;
import com.sbuzhi.gg.mvc.ims.dao.FansDao;
import com.sbuzhi.gg.mvc.ims.entity.Fans;
import com.sbuzhi.gg.mvc.sys.entity.User;
import com.sbuzhi.gg.web.service.CrudService;
/**
 * 粉丝Service
 * @author Stealth.Lee
 * @date 2016年11月26日 下午9:22:50
 */
@Service
@Transactional(readOnly = true)
public class FansService extends CrudService<FansDao, Fans> {
	
	@Resource
	private UsersDao usersDao;
	
	/**
	 * 根据是否能查询到粉丝，来执行是否是关注用户和取关
	 * @param fans
	 */
	@Transactional(readOnly = false)
	public int concern(Fans fans) {
		if(dao.get(fans) == null){
			fans.preInsert();
			dao.insert(fans);
			return 1;
		} else {
			fans.preUpdate();
			fans.setDelFlag("0");
			dao.delete(fans);
			return 0;
		}
	}
	
	public boolean isConcern(Fans fans){
		Fans fs = dao.isConcern(fans);
		if(fs != null){
			return true;
		} else {
			return false;
		}
	}
	
	public boolean isConcern2(Fans fans){
		if(dao.isConcern2(fans) != null){
			return true;
		} else {
			return false;
		}
	}
	
	/**
	 * 获取粉丝信息
	 * @param userId
	 * @return
	 */
	public List<User> getFans(User user){
		return usersDao.getFans(user);
	}
	
	/**
	 * 获取粉丝或关注总数
	 * @param userId
	 * @return
	 */
	public int getFansCount(Fans fans){
		return dao.getFansCount(fans);
	}
	
	/**
	 * 获取关注用户信息
	 * @param userId
	 * @return
	 */
	public List<User> getConcern(User user){
		return usersDao.getConcern(user);
	}
}
