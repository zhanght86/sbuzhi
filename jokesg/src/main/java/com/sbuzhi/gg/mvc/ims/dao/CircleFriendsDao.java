package com.sbuzhi.gg.mvc.ims.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sbuzhi.gg.mvc.ims.entity.CircleFriends;
import com.sbuzhi.gg.web.dao.CrudDao;
/**
 * 朋友圈DAO
 * @author stealth.Lee
 * @date 2016年12月5日 下午4:48:14
 */
@Repository
public interface CircleFriendsDao extends CrudDao<CircleFriends> {
	
	/**
	 * 查看朋友圈
	 * @param userId
	 * @return
	 */
	List<CircleFriends> findAllFriends(String userId);
	
}
