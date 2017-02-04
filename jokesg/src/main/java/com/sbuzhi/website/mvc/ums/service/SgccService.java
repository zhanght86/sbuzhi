package com.sbuzhi.website.mvc.ums.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sbuzhi.gg.web.service.CrudService;
import com.sbuzhi.website.mvc.ums.dao.SgccDao;
import com.sbuzhi.website.mvc.ums.entity.Sgcc;
/**
 * 
 * @author stealth.Lee
 * @date 2017年1月17日 上午11:26:02
 */
@Service
@Transactional(readOnly = true)
public class SgccService extends CrudService<SgccDao, Sgcc> {

}
