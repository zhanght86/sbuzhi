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
 * 爱奇异搜索
 */
@Controller
@RequestMapping("rms/iqiy")
public class IqiySearchController extends BaseController {
	
	public static final String  API_URL = "http://partner.vip.qiyi.com/openapi/search?openudid=520b0cfb6205cf7d37494e7dce99daddedf0da67&key=10029202e5cf43efbcac29e02af37e89";
	
	@Resource
	private SearchService searchService;
	
	@RequestMapping("")
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
	public String index(String word, String page, String rows, Model model) {
		int page1 = StringUtil.safeInt(page, 1);
		int rows1 = StringUtil.safeInt(rows, 20);
		word = StringUtil.safeString(word, "爱情公寓");
		if (StringUtils.isBlank(word)) {
			return "rms/online2";
		}
		String url = UrlUtils.getIqiyApiUrl(API_URL, word, page1, rows1);
		try {
			String entity = UrlUtils.getHttpEntity(url);
			List<Album> albums = searchService.iqiySearch(entity);
			model.addAttribute("albums", albums);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug("爱奇异搜索异常", e);
		}
		return "rms/online2";
	}
	
}
