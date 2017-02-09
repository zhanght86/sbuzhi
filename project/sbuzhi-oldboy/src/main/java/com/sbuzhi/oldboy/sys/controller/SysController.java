package com.sbuzhi.oldboy.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sbuzhi.web.controller.BaseController;

/**
 * 系统控制器
 * @author stealth.Lee
 * @date 2017年2月7日 下午5:40:47
 */
@Controller
@RequestMapping("sys")
public class SysController extends BaseController{
	
	/**
	 * 程序入口
	 * @return
	 */
	@RequestMapping("")
	public String login(){
		return "oldboy/index";
	}
	
}
