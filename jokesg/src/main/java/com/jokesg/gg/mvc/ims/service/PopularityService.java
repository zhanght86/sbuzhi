package com.jokesg.gg.mvc.ims.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jokesg.gg.mvc.ims.dao.PopularityDao;
import com.jokesg.gg.mvc.ims.entity.Popularity;
import com.jokesg.gg.web.service.CrudService;
/**
 * 人气Service
 * @author stealth.Lee
 * @date 2016年11月30日 上午10:52:44
 */
@Deprecated
@Service
@Transactional(readOnly = true)
public class PopularityService extends CrudService<PopularityDao, Popularity> {
	
}
