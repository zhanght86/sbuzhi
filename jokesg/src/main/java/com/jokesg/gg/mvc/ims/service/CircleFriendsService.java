package com.jokesg.gg.mvc.ims.service;

import java.io.IOException;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.jokesg.gg.common.enumeration.OSSKey;
import com.jokesg.gg.common.utils.oss.OSSUtils;
import com.jokesg.gg.mvc.ims.dao.CircleFriendsDao;
import com.jokesg.gg.mvc.ims.entity.CircleFriends;
import com.jokesg.gg.web.entity.DataEntity;
import com.jokesg.gg.web.service.CrudService;
/**
 * 朋友圈Service
 * @author stealth.Lee
 * @date 2016年12月5日 下午4:49:03
 */
@Service
@Transactional(readOnly = true)
public class CircleFriendsService extends CrudService<CircleFriendsDao, CircleFriends> {
	
	@Transactional(readOnly = false)
	public void save(CircleFriends entity,MultipartFile pic) throws IOException {
		entity.preInsert();
		if(StringUtils.isBlank(entity.getSource())){
			entity.setSource("jokesg");
		}
		dao.insert(entity);
		entity.setDelFlag(DataEntity.DEL_FLAG_DELETE);
		String key = OSSUtils.createKey(OSSKey.PHOTO, entity.getId());
		OSSUtils.uploadFile(key, pic.getBytes());
		entity.setPicUrl(key);
		dao.update(entity);
	}
	
	public List<CircleFriends> findFriends(String userId){
		return dao.findAllFriends(userId);
	}
	
}
