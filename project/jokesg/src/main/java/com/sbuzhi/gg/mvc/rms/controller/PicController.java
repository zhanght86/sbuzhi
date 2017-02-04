package com.sbuzhi.gg.mvc.rms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sbuzhi.gg.common.utils.oss.OSSUtils;
import com.sbuzhi.gg.web.controller.BaseController;
/**
 * 图片控制器
 * @author Stealth.Lee
 * @date 2016年11月14日 下午7:37:31
 */
@Controller
@RequestMapping(value = "rms/pic")
public class PicController extends BaseController{
	
	/**
	 * 获取图片
	 * @param url
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "getPic")
	public byte[] getPic(String url){
		return OSSUtils.downloadFile(url);
	}
	
}
