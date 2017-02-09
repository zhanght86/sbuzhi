package com.sbuzhi.web.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.transaction.annotation.Transactional;

/**
 * Service支持类
 * @author stealth.Lee
 * @date 2017年2月7日 下午2:28:20
 */
@Transactional(readOnly = true)
public abstract class BaseService {
	
	protected Logger logger = LoggerFactory.getLogger(getClass());
	
}
