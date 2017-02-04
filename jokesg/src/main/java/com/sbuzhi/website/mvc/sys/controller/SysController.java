package com.sbuzhi.website.mvc.sys.controller;

import javax.annotation.Resource;

import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sbuzhi.gg.mvc.cms.service.UsersService;
import com.sbuzhi.gg.mvc.sys.realm.SystemAuthorizingRealm.Principal;
import com.sbuzhi.gg.mvc.sys.utils.UserUtils;
import com.sbuzhi.gg.web.controller.BaseController;
import com.sbuzhi.website.mvc.ums.entity.Pic;
import com.sbuzhi.website.mvc.ums.entity.Sgcc;
import com.sbuzhi.website.mvc.ums.service.PicService;
import com.sbuzhi.website.mvc.ums.service.SgccService;
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
	@Resource
	private SgccService  sgccService;
	@Resource
	private PicService picService;
	
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
     * 时光匆匆的流年
     * @return
     */
    @RequestMapping(value = {"sgcc"})
    public String wsl(Model model){
    	model.addAttribute("sgcc", sgccService.findAllList(new Sgcc()));
    	model.addAttribute("boy", picService.findAllList(new Pic(Pic.TYPE_BOY)));
    	model.addAttribute("gril", picService.findAllList(new Pic(Pic.TYPE_GIRL)));
    	model.addAttribute("ohter", picService.findAllList(new Pic(Pic.TYPE_OTHER)));
    	return "website/ums/index2";
    }
    
    @RequestMapping(value = {"save"})
    public String save(Sgcc sgcc, Model model){
    	sgccService.save(sgcc);
    	return "redirect:/ws/sgcc.do";
    }
    
    @ResponseBody
    @RequestMapping(value = {"getName"})
    public boolean getName(Sgcc sgcc){
    	Sgcc entity = sgccService.get(sgcc);
    	if(entity == null){
    		return true;
    	}
    	return false;
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
