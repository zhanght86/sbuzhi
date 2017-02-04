package com.sbuzhi.gg.mvc.ims.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sbuzhi.gg.common.utils.ObjectUtil;
import com.sbuzhi.gg.mvc.ims.dao.InfoDao;
import com.sbuzhi.gg.mvc.ims.entity.UserInfo;
import com.sbuzhi.gg.web.service.CrudService;
/**
 * 用户信息Service
 * @author stealth.Lee
 * @date 2016年11月22日 下午3:24:32
 */
@Service
@Transactional(readOnly = true)
public class InfoService extends CrudService<InfoDao, UserInfo> {

	@Override
	@Transactional(readOnly = false)
	public void save(UserInfo entity) {
		if(ObjectUtil.isAllBlank(dao.get(entity.getId()))){
			entity.setIsNewRecord(false);
			entity.preInsert();
			dao.insert(entity);
		}else{
			entity.preUpdate();
			dao.update(entity);
		}
	}
	
}
