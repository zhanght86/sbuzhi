package com.jokesg.gg.mvc.ims.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jokesg.gg.common.utils.StringUtil;
import com.jokesg.gg.mvc.cms.service.UsersService;
import com.jokesg.gg.mvc.ims.entity.Fans;
import com.jokesg.gg.mvc.ims.entity.Visitor;
import com.jokesg.gg.mvc.ims.service.CircleFriendsService;
import com.jokesg.gg.mvc.ims.service.FansService;
import com.jokesg.gg.mvc.ims.service.InfoService;
import com.jokesg.gg.mvc.ims.service.VisitorService;
import com.jokesg.gg.mvc.sys.entity.User;
import com.jokesg.gg.mvc.sys.utils.UserUtils;
import com.jokesg.gg.web.controller.BaseController;
import com.jokesg.gg.web.entity.Paging;
/**
 * 用户信息管理模块
 * @author stealth.Lee
 * @date 2016年11月22日 上午10:47:39
 */
@Controller
@RequestMapping(value = "ims")
public class ImsController extends BaseController {
	
	@Resource
	private InfoService infoService;
	@Resource
	private FansService fansService;
	@Resource
	private UsersService usersService;
	@Resource
	private VisitorService visitorService;
	@Resource
	private CircleFriendsService circleFriendsService;
	
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
	@RequestMapping(value = "info")
	public String info(Model model){
		User user = UserUtils.getUser();
		model.addAttribute("user", user);
		model.addAttribute("info",infoService.get(user.getId()));
		return "ims/userInfo";
	}
	
	@RequestMapping(value = "online")
	public String online(Model model){
		return "ims/online/a";
	}
	
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
	@RequestMapping(value = "myFans")
	public String myFans(Model model, HttpServletRequest request){
		int pageNo = StringUtil.safeInt(request.getParameter("pageNo"),1);
		Paging paging = new Paging(pageNo, 15);
		Fans fans = null;
		User user = UserUtils.getUser();
		if(StringUtils.isNotEmpty(user.getId())){
			user.setPaging(paging);
			Fans fs = new Fans();
			fs.setUserId(user.getId());
			fs.setFansId(null);
			user.setFansCount(fansService.getFansCount(fs));
			fs.setUserId(null);
			fs.setFansId(user.getId());
			// 关注总数
			user.setConcernCount(fansService.getFansCount(fs));
			model.addAttribute("user", user);
			List<User> fans1 = fansService.getFans(user);
			for (User u : fans1) {
				fans = new Fans();
				fans.setUserId(u.getId());
				// 粉丝总数
				u.setFansCount(fansService.getFansCount(fans));
				
				fans.setUserId(null);
				fans.setFansId(u.getId());
				// 关注总数
				u.setConcernCount(fansService.getFansCount(fans));
				
				fans.setFansId(user.getId());
				fans.setUserId(u.getId());
				u.setConcern(fansService.isConcern2(fans));
			}
			model.addAttribute("fans", fans1);
		}
		return "ims/fans";
	}
	
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
	@RequestMapping(value = "myConcern")
	public String myConcern(Model model, HttpServletRequest request){
		int pageNo = StringUtil.safeInt(request.getParameter("pageNo"),1);
		Paging paging = new Paging(pageNo, 15);
		Fans fans = null;
		User user = UserUtils.getUser();
		if(StringUtils.isNotEmpty(user.getId())){
			user.setPaging(paging);
			Fans fs = new Fans();
			fs.setUserId(user.getId());
			fs.setFansId(null);
			user.setFansCount(fansService.getFansCount(fs));
			fs.setUserId(null);
			fs.setFansId(user.getId());
			// 关注总数
			user.setConcernCount(fansService.getFansCount(fs));
			model.addAttribute("user", user);
			List<User> fans1 = fansService.getConcern(user);
			for (User u : fans1) {
				fans = new Fans();
				fans.setUserId(u.getId());
				// 粉丝总数
				u.setFansCount(fansService.getFansCount(fans));
				
				fans.setUserId(null);
				fans.setFansId(u.getId());
				// 关注总数	
				u.setConcernCount(fansService.getFansCount(fans));
				
				fans.setFansId(user.getId());
				fans.setUserId(u.getId());
				u.setConcern(fansService.isConcern2(fans));
			}
			model.addAttribute("fans", fans1);
		}
		return "ims/concern";
	}
	
	/**
	 * 个人空间
	 * 首先判断User==null，如果为空，说明匿名访问，不增加访客记录，并且不增加访问量
	 * 如果User!=null,并且id==null或者id==user.getId();说明是用户访问自己的空间，同样不增加访客记录，不增加访问量
	 * 如果User!=null,并且id!=user.getId();说明用户是访问其它用户空间，增加其它访客用户记录，增加访问量
	 * @param id 用户ID，不为空说明，是当前用户访问其它用户空间，为空说明是当前用户访问自己空间
	 * @return
	 */
	@RequestMapping(value = "blog")
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
	public String blog(Model model, String id){
		User user = UserUtils.getUser();
		Visitor visitor = null;
		if(StringUtils.isBlank(user.getId()) && StringUtils.isNotBlank(id)){
			// user.id==null&&id!=null, 说明是匿名访问
			model.addAttribute("user", usersService.get(new User(id)));
			model.addAttribute("info", infoService.get(id));
		} else if(StringUtils.isBlank(id) || (StringUtils.isNotBlank(id) && StringUtil.isStrEqual(id, user.getId()))) {
			// id==null||(id!=null&&id==user.id) ,说明是当前用户访问自己的空间
			model.addAttribute("friends", circleFriendsService.finList(user.getId()));
			model.addAttribute("visitor", visitorService.finList(user.getId()));
			model.addAttribute("user", user);
			model.addAttribute("info", infoService.get(user.getId()));
		} else if(StringUtils.isNotBlank(id) && !StringUtil.isStrEqual(id, user.getId())) {
			// id!=null&&id!=user.id 说明是当前用户访问其它用户个人空间
			visitor = new Visitor(id,user.getId());
			visitorService.save(visitor);
			model.addAttribute("user", usersService.get(new User(id)));
			model.addAttribute("info", infoService.get(id));
		}
		return "ims/blog";
	}

}
