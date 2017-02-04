package com.sbuzhi.gg.mvc.rms.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sbuzhi.gg.common.enumeration.OSSKey;
import com.sbuzhi.gg.common.utils.Const;
import com.sbuzhi.gg.common.utils.oss.OSSUtils;
import com.sbuzhi.gg.mvc.rms.entity.Favorites;
import com.sbuzhi.gg.mvc.rms.entity.Jokesg;
import com.sbuzhi.gg.mvc.rms.service.FavoritesService;
import com.sbuzhi.gg.mvc.rms.service.VideoService;
import com.sbuzhi.gg.mvc.sys.entity.User;
import com.sbuzhi.gg.mvc.sys.utils.UserUtils;
import com.sbuzhi.gg.web.controller.BaseController;
/**
 * `我的`控制器
 * @author stealth.Lee
 * @date 2016年11月24日 上午10:50:35
 */
@Controller
@RequestMapping(value = "rms/my")
public class MyController extends BaseController {
	
	@Resource
	private VideoService videoService;
	@Resource
	private FavoritesService favoritesService;
	
	/**
	 * 我的视频列表
	 * @param model
	 * @return
	 */
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
	@RequestMapping(value = "list")
	public String list(Model model){
		User user = UserUtils.getUser();
		List<Jokesg> jokesgs = videoService.findUserIdByJokesg(user.getId());
		model.addAttribute("Jokesg", jokesgs);
		return "rms/myWork";
	}
	
	/**
	 * 获取视频基本信息
	 * @param model
	 * @param id
	 * @return
	 */
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
	@RequestMapping(value = "getVideoInfo")
	public String getVideoInfo(Model model, String id){
		model.addAttribute("video", videoService.get(id));
		model.addAttribute("jm", videoService.getMenuType(id));
		return "rms/videoInfo";
	}
	
	/**
	 * 修改视频基本信息
	 * @param model
	 * @param jokesg
	 * @return
	 */
	@ResponseBody
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
	@RequestMapping(value = "updateVideoInfo")
	public boolean updateVideoInfo(Model model, Jokesg jokesg, HttpServletRequest request){
		boolean rusult = false;
		MultipartHttpServletRequest mhsr = (MultipartHttpServletRequest) request;
		try {
			mhsr.setCharacterEncoding(Const.ENCODING);
			MultipartFile file = mhsr.getFile("pic");
			String key = OSSUtils.createKey(OSSKey.PHOTO, jokesg.getId());
			OSSUtils.uploadFile(key, file.getBytes());
			jokesg.setPicUrl(key);
			rusult = videoService.update(jokesg);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return rusult;
	}
	
	/**
	 * 删除当前视频
	 * @param id
	 * @return
	 */
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
	@RequestMapping(value = "delVideo")
	public String delVideo(String id){
		videoService.delete(id);
		return "redirect:/rms/my/list.do";
	}
	
	
	/**
	 * 我的收藏列表
	 * @param model
	 * @return
	 */
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
	@RequestMapping(value = "myFavorites")
	public String favorites(Model model){
		User user = UserUtils.getUser();
		Favorites favorite = new Favorites();
		favorite.setUserId(user.getId());
		List<Favorites> favorites = favoritesService.findList(favorite);
		List<Jokesg> jokesgs = new ArrayList<Jokesg>();
		for (Favorites favo : favorites) {
			Jokesg jokesg = videoService.get(favo.getJokesgId());
			if(jokesg != null){
				jokesgs.add(jokesg);
			}
		}
		model.addAttribute("Jokesg", jokesgs);
		//return "rms/myWork";
		return "rms/favorites";
	}
	
}
