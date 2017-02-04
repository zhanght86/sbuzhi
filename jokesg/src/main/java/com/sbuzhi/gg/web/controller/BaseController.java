package com.sbuzhi.gg.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;

import com.sbuzhi.gg.common.utils.Const;

/**
 * Controller支持类
 * Created by Stealth.Lee on 2016/9/24.
 */
public abstract class BaseController {

    protected Logger logger = LoggerFactory.getLogger(getClass());

	/**
	 * 添加Model消息
	 * @param message
	 */
	protected void addMessage(Model model, String... messages) {
		StringBuilder sb = new StringBuilder();
		for (String message : messages){
			sb.append(message).append(messages.length>1?"<br/>":"");
		}
		model.addAttribute(Const.MESSAGE, sb.toString());
	}
	
}
