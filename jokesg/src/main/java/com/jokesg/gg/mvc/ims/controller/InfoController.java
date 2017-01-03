package com.jokesg.gg.mvc.ims.controller;

import javax.annotation.Resource;

import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jokesg.gg.mvc.ims.entity.UserInfo;
import com.jokesg.gg.mvc.ims.service.InfoService;
import com.jokesg.gg.web.controller.BaseController;
/**
 * 用户信息控制器
 * @author stealth.Lee
 * @date 2016年11月22日 上午10:49:25
 */
@Controller
@RequestMapping(value = "ims/info")
public class InfoController extends BaseController {
	
	@Resource
	private InfoService infoService;
	
	@ResponseBody
	@RequestMapping(value = "save")
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
	public boolean save(UserInfo info){
		infoService.save(info);
		return true;
	}

}
