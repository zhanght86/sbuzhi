package com.sbuzhi.website.mvc.ums.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sbuzhi.gg.web.service.CrudService;
import com.sbuzhi.website.mvc.ums.dao.PicDao;
import com.sbuzhi.website.mvc.ums.entity.Pic;
/**
 * 
 * @author stealth.Lee
 * @date 2017年1月17日 下午4:05:07
 */
@Service
@Transactional(readOnly = true)
public class PicService extends CrudService<PicDao, Pic> {

}
