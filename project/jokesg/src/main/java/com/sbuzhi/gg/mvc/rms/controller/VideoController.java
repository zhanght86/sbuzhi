package com.sbuzhi.gg.mvc.rms.controller;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sbuzhi.gg.common.enumeration.OSSKey;
import com.sbuzhi.gg.common.utils.Const;
import com.sbuzhi.gg.common.utils.StringUtil;
import com.sbuzhi.gg.common.utils.oss.OSSUtils;
import com.sbuzhi.gg.mvc.cms.service.UsersService;
import com.sbuzhi.gg.mvc.ims.entity.Fans;
import com.sbuzhi.gg.mvc.ims.service.FansService;
import com.sbuzhi.gg.mvc.rms.entity.Comment;
import com.sbuzhi.gg.mvc.rms.entity.Favorites;
import com.sbuzhi.gg.mvc.rms.entity.Jokesg;
import com.sbuzhi.gg.mvc.rms.service.CommentService;
import com.sbuzhi.gg.mvc.rms.service.FavoritesService;
import com.sbuzhi.gg.mvc.rms.service.VideoService;
import com.sbuzhi.gg.mvc.sys.entity.User;
import com.sbuzhi.gg.mvc.sys.utils.UserUtils;
import com.sbuzhi.gg.web.controller.BaseController;
import com.sbuzhi.gg.web.entity.Paging;

/**
 * Jokesg视频控制器
 * @author stealth.Lee
 * @date 2016年11月10日 上午9:28:20
 */
@Controller
@RequestMapping(value = "rms/video")
public class VideoController extends BaseController{
	
	@Resource
	private VideoService videoService;
	@Resource
	private FavoritesService favoritesService;
	@Resource
	private UsersService usersService;
	@Resource
	private FansService fansService;
	@Resource
	private CommentService commentService;
	
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
	@RequestMapping(value = "form")
	public String form(){
		return "rms/uploadVideo";
	}
	
	/**
	 * 保存视频
	 * @return
	 */
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String save(Jokesg jokesg, HttpServletRequest request) {
		try {
			User user = UserUtils.getUser();
			jokesg.setUserId(user.getId());
			jokesg.preInsert();
			MultipartHttpServletRequest mhsr = (MultipartHttpServletRequest) request;
			mhsr.setCharacterEncoding(Const.ENCODING);
			MultipartFile video = mhsr.getFile("video");
			MultipartFile pic = mhsr.getFile("pic");
			String key1 = OSSUtils.createKey(OSSKey.JOKESG, jokesg.getId());
			String key2 = OSSUtils.createKey(OSSKey.PHOTO, jokesg.getId());
			OSSUtils.uploadFile(key1, video.getBytes());
			OSSUtils.uploadFile(key2, pic.getBytes());
			jokesg.setHref(key1);
			jokesg.setPicUrl(key2);
			videoService.saveVideo(jokesg);
			return "redirect:/rms/my/list.do";
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "rms/uploadVideo";
	}
	
	/**
	 * 获取单个视频
	 * @param model
	 * @param id 视频ID
	 * @return
	 */
	@RequestMapping(value = "getVideo")
	public String getVideo(Model model, String id, HttpServletRequest request){
		int pageNo = StringUtil.safeInt(request.getParameter("pageNo"),1);

		Favorites favorites = new Favorites();
		User user = UserUtils.getUser();
		User jokesgUser = usersService.getUserByJokesgId(id);
		videoService.playAmount(id);
		if(StringUtils.isNoneBlank(user.getId())){
			// 获取是否关注、收藏、点赞
			Favorites favorite = new Favorites();
			favorite.setJokesgId(id);
			favorite.setUserId(user.getId());
			model.addAttribute("videoType", favoritesService.getType(favorite));
			Fans fans = new Fans();
			fans.setFansId(user.getId());
			fans.setJokesgId(id);
			model.addAttribute("isConcern", fansService.isConcern(fans));
		}
		Jokesg jokesg = videoService.get(id);
		if(jokesg == null){
			model.addAttribute(Const.MESSAGE, "该视频连接已经失效！");
		}
		
		Fans fs = new Fans();
		fs.setUserId(jokesgUser.getId());
		fs.setFansId(null);
		user.setFansCount(fansService.getFansCount(fs));
		fs.setUserId(null);
		fs.setFansId(jokesgUser.getId());
		// 关注总数
		user.setConcernCount(fansService.getFansCount(fs));
		model.addAttribute("fans",user);

		favorites.setJokesgId(id);
		favorites.setType(Favorites.ZAN);
		model.addAttribute("zan",favoritesService.getConut(favorites));
		favorites.setType(Favorites.LIKE);
		model.addAttribute("like",favoritesService.getConut(favorites));
		model.addAttribute("user", jokesgUser);
		model.addAttribute("jo",jokesg);
		// 获取评论，分页10条
		Comment comment = new Comment(new Paging(pageNo, 10));
		comment.setJokesgId(id);
		model.addAttribute("comments",commentService.findAllList(comment));
		comment.getPaging().setTotal(commentService.count(comment));
		model.addAttribute("paging",comment.getPaging());
		return "rms/video3";
	}
	
	@RequestMapping("video")
	public String video(Model model, String url){
		model.addAttribute("url",url);
		return "rms/video2";
	}
	
	/**
	 * 视频播放
	 * @param url
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "videoPlay")
	public byte[] videoPlay(String url){
		return OSSUtils.downloadFile(url);
	}
	
	/**
	 * 视频评论
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "comment")
	public String comment(Comment comment){
		User user = UserUtils.getUser();
		if(StringUtils.isNotBlank(user.getId())){
			comment.setUserId(user.getId());
			commentService.save(comment);
//			StringBuilder result = new StringBuilder();
//			result.append("<div class=\"media\"> <h5><a href=\"#\">"+comment.getUser().getNickname()+"</a></h5> <div class=\"media-left\"> <a href=\"#\"><img src=\"${ctx}/ui/video3/images/user.jpg\" title=\"One movies\" alt=\" \" /></a></div><div class=\"media-body\"> <p>"+comment.getContent()+"</p> <span>Time by :<a href=\"#\"> "+comment.getInsertDate()+" </a></span></div> </div>");
			return "<div class=\"media\"> <h5><a href=\"#\">"+comment.getUser().getNickname()+"</a></h5> <div class=\"media-left\"> <a href=\"#\"><img src=\"${ctx}/ui/video3/images/user.jpg\" title=\"One movies\" alt=\" \" /></a></div><div class=\"media-body\"> <p>"+comment.getContent()+"</p> <span>Time by :<a href=\"#\"> "+comment.getInsertDate()+" </a></span></div> </div>";
		} else {
			return null;
		}
	}
	
}
