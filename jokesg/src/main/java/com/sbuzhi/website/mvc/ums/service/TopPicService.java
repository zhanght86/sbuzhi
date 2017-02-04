package com.sbuzhi.website.mvc.ums.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sbuzhi.gg.web.service.CrudService;
import com.sbuzhi.website.mvc.ums.dao.TopPicDao;
import com.sbuzhi.website.mvc.ums.entity.TopPic;
/**
 * 首页大图Service
 * @author stealth.Lee
 * @date 2017年1月9日 下午2:58:05
 */
@Service
@Transactional(readOnly = true)
public class TopPicService extends CrudService<TopPicDao, TopPic> {
	
}
