package com.jokesg.gg.mvc.cms.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jokesg.gg.mvc.sys.entity.User;
import com.jokesg.gg.web.dao.CrudDao;
/**
 * 用户DAO，此DAO与sys下DAO作用不同，此DAO主要服务于cms模块
 * @author Stealth.Lee
 * @date 2016年11月19日 下午4:20:49
 */
@Repository
public interface UsersDao extends CrudDao<User> {
	
	/**
	 * 获取总条记录数
	 * @param delFlag
	 * @return
	 */
	public int count(User user);
	
	/**
	 * 根据视频ID查询出该视频的用户信息
	 * @param id 视频ID
	 * @return
	 */
	public User getUserByJokesgId(String id);
	
	/**
	 * 根据用户ID查询粉丝信息
	 * @param id
	 * @return
	 */
	public List<User> getFans(User user);
	
	/**
	 * 根据粉丝ID查询关注的用户
	 * @param id
	 * @return
	 */
	public List<User> getConcern(User user);
	
}
