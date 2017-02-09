package com.sbuzhi.vitae.bl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sbuzhi.web.controller.BaseController;
/**
 * 个人简历控制器
 * @author stealth.Lee
 * @date 2017年2月9日 上午9:07:33
 */
@Controller
public class VitaeController extends BaseController {
	
	@RequestMapping("")
	public String index(){
		return "vitae/index";
	}
	
}
