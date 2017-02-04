package com.sbuzhi.gg.mvc.sys.service;

import com.sbuzhi.gg.mvc.sys.dao.CodeDao;
import com.sbuzhi.gg.mvc.sys.entity.Code;
import com.sbuzhi.gg.web.service.CrudService;
/**
 * CodeService
 * @author stealth.Lee
 * @date 2016年11月1日 下午2:59:37
 */
public class CodeService extends CrudService<CodeDao, Code> {

	public Code getByCode(String code) {
		return dao.getByCode(code);
	}

}
