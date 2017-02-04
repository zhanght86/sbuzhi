package com.sbuzhi.website.mvc.ums.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sbuzhi.gg.web.controller.BaseController;

/**
 * 用户管理模块控制器
 * @author stealth.Lee
 * @date 2017年1月9日 下午2:59:10
 */
@Controller
@RequestMapping("ws/ums")
public class UmsController extends BaseController{
	
	@RequestMapping("dress")
	public String dress(){
		return "website/ums/dress";
	}
	
}
