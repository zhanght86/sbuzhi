package com.sbuzhi.gg.mvc.rms.controller;

import javax.annotation.Resource;

import com.sbuzhi.gg.mvc.cms.service.UsersService;
import com.sbuzhi.gg.mvc.rms.service.VideoService;
import com.sbuzhi.gg.web.controller.BaseController;

import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 主页控制器
 * Created by Stealth.Lee on 2016/9/24.
 */
@Controller
@RequestMapping(value = {"a"})
public class IndexController extends BaseController{

	@Resource
	private VideoService videoService;
	@Resource
	private UsersService usersService;
	
    /**
     * 请求转发到主页
     * @return
     */
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
    @RequestMapping(value = {"index"})
    public String index(Model model){
    	model.addAttribute("hot", videoService.getHot());
    	model.addAttribute("newestVideo", videoService.getNewest());
    	model.addAttribute("users", usersService.findAllList());
        return "rms/index";
    }

}
