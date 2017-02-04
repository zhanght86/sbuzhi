package com.sbuzhi.gg.mvc.rms.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sbuzhi.gg.common.utils.StringUtil;
import com.sbuzhi.gg.mvc.cms.service.MenusService;
import com.sbuzhi.gg.mvc.rms.entity.Favorites;
import com.sbuzhi.gg.mvc.rms.entity.Jokesg;
import com.sbuzhi.gg.mvc.rms.service.FavoritesService;
import com.sbuzhi.gg.mvc.rms.service.VideoService;
import com.sbuzhi.gg.mvc.rms.vo.JokesgMenu;
import com.sbuzhi.gg.mvc.sys.entity.User;
import com.sbuzhi.gg.mvc.sys.utils.UserUtils;
import com.sbuzhi.gg.web.controller.BaseController;
import com.sbuzhi.gg.web.entity.Paging;
/**
 * 资源管理模块
 * @author stealth.Lee
 * @date 2016年11月23日 下午4:49:56
 */
@Controller
@RequestMapping(value = "rms")
public class RmsController extends BaseController {
	
	@Resource
	private FavoritesService favoritesService;
	@Resource
	private MenusService menusService;
	@Resource
	private VideoService videoService;
	
	@ResponseBody
	@RequestMapping(value = "favorites")
	public int favorites(Favorites favorites){
		User user = UserUtils.getUser();
		favorites.setUserId(user.getId());
		int result = favoritesService.favorites(favorites);
		return result;
	}
	
	/**
	 * 显示最新板块全部内容
	 * @return
	 */
	@RequestMapping(value = "seeAll")
	public String seeAll(Model model, JokesgMenu jokesgMenu, HttpServletRequest request){
		int pageNo = StringUtil.safeInt(request.getParameter("pageNo"), 1);
		// 类型[1:最新板块 2:热门板块]
		int type = StringUtil.safeInt(request.getParameter("type"), 2);
		Paging paging = new Paging();
		paging.setPageNo(pageNo);
		paging.setPageSize(12);		// 每页显示12条数据
		jokesgMenu.setPaging(paging);
		List<Jokesg> videos = null;
		if(type == 1){
			videos = videoService.getVideoByMenuId(jokesgMenu);
		} else if(type == 2){
			videos = videoService.getVideoByMenuId2(jokesgMenu);
		}
		model.addAttribute("mcs", menusService.getMenuCategories());
		model.addAttribute("videos",videos);
		model.addAttribute("videoCount", videoService.count(jokesgMenu));
		model.addAttribute("paging", paging);
		model.addAttribute("menuId", jokesgMenu.getMenuId());
		return "rms/seeAll";
	}
	
}
