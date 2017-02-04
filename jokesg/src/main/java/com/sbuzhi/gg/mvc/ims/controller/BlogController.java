package com.sbuzhi.gg.mvc.ims.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sbuzhi.gg.common.utils.Const;
import com.sbuzhi.gg.mvc.ims.entity.CircleFriends;
import com.sbuzhi.gg.mvc.ims.service.CircleFriendsService;
import com.sbuzhi.gg.mvc.ims.service.VisitorService;
import com.sbuzhi.gg.mvc.sys.entity.User;
import com.sbuzhi.gg.mvc.sys.utils.UserUtils;
import com.sbuzhi.gg.web.controller.BaseController;
/**
 * 个人博客控制器
 * @author stealth.Lee
 * @date 2016年12月1日 下午2:26:42
 */
@Controller
@RequestMapping(value = "ims/blog")
public class BlogController extends BaseController {
	
	@Resource
	private CircleFriendsService circleFriendsService;
	@Resource
	private VisitorService visitorService;
	
	@RequestMapping(value = "publishDynamic")
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
	public String publishDynamic(CircleFriends circleFriends, HttpServletRequest request){
		User user = UserUtils.getUser();
		if(StringUtils.isNotBlank(user.getId())){
			try {
				circleFriends.setUserId(user.getId());
				MultipartHttpServletRequest mhsr = (MultipartHttpServletRequest) request;
				mhsr.setCharacterEncoding(Const.ENCODING);
				MultipartFile pic = mhsr.getFile("pic");
				circleFriendsService.save(circleFriends,pic);
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "redirect:/ims/blog.do";
	}
	
	@RequestMapping(value = "friends")
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
	public String friends(Model model){
		User user =  UserUtils.getUser();
		if(StringUtils.isNotBlank(user.getId())){
			model.addAttribute("friends", circleFriendsService.findFriends(user.getId()));
			model.addAttribute("visitor", visitorService.finList(user.getId()));
		}
		return "ims/friendsBlog";
	}
	
}
