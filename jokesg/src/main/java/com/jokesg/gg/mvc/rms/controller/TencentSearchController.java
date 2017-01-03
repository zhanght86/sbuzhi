package com.jokesg.gg.mvc.rms.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jokesg.gg.common.utils.StringUtil;
import com.jokesg.gg.common.utils.UrlUtils;
import com.jokesg.gg.mvc.rms.entity.Album;
import com.jokesg.gg.mvc.rms.service.SearchService;
import com.jokesg.gg.web.controller.BaseController;

/**
 * 腾讯搜索
 */
@Controller
@RequestMapping("rms/tencent")
public class TencentSearchController extends BaseController {
	
	private static final String API_URL = "http://rel.video.qq.com/srh_gionee?plat=2&pver=203&stag=gionee.vsearch&otype=json&callback=_";
	
	@Resource
	private SearchService searchService;
	
	@RequestMapping("")
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
	public String index(String word, String page, String rows, Model model) {
		int page1 = StringUtil.safeInt(page, 1) - 1;
		int rows1 = StringUtil.safeInt(rows, 20);
		word = StringUtil.safeString(word, "爱情公寓");
		if (StringUtils.isBlank(word)) {
			return "rms/online";
		}
		String url = UrlUtils.getTencentUrl(API_URL, word, page1, rows1);
		try {
			String entity = UrlUtils.getHttpEntity(url);
			List<Album> albums = searchService.tencentSearch(entity);
			model.addAttribute("albums", albums);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug("腾讯视频搜索异常", e);
		}
		return "rms/online";
	}
	
}
