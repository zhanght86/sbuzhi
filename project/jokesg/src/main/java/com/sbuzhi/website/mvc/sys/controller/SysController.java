package com.sbuzhi.website.mvc.sys.controller;

import javax.annotation.Resource;

import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sbuzhi.gg.mvc.cms.service.UsersService;
import com.sbuzhi.gg.mvc.sys.realm.SystemAuthorizingRealm.Principal;
import com.sbuzhi.gg.mvc.sys.utils.UserUtils;
import com.sbuzhi.gg.web.controller.BaseController;
/**
 * 系统管理模块总控制器 
 * @author stealth.Lee
 * @date 2017年1月10日 上午9:46:59
 */
@Controller
@RequestMapping("ws")
public class SysController extends BaseController {
	
	@Resource
	private UsersService usersService;
	
    /**
     * website网站请求转发到主页
     * @return
     */
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
    @RequestMapping(value = {"index"})
    public String wsIndex(Model model){
//    	model.addAttribute("users", usersService.findAllList());
    	return "website/ums/index";
    }
	
    /**
     * 汪苏泷
     * @return
     */
    @RequestMapping(value = {"wsl"})
    public String wsl(Model model){
    	return "website/ums/index2";
    }
    
    /**
     * 请求跳转到登陆页面
     * @return
     */
    @RequestMapping(value = {"login"},method = RequestMethod.GET)
    public String login(){
    	Principal principal = UserUtils.getPrincipal();
    	if(principal != null){
    		return "redirect:/ws/index";
    	}
        return "website/ums/login";
    }
}
