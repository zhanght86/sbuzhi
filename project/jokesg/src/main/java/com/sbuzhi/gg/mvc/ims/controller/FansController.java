package com.sbuzhi.gg.mvc.ims.controller;

import javax.annotation.Resource;

import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sbuzhi.gg.mvc.ims.entity.Fans;
import com.sbuzhi.gg.mvc.ims.service.FansService;
import com.sbuzhi.gg.mvc.sys.entity.User;
import com.sbuzhi.gg.mvc.sys.utils.UserUtils;
import com.sbuzhi.gg.web.controller.BaseController;
/**
 * 粉丝控制器
 * @author Stealth.Lee
 * @date 2016年11月26日 下午9:35:16
 */
@Controller
@RequestMapping(value = "ims/fans")
public class FansController extends BaseController {
	
	@Resource
	private FansService fansService;
	
	/**
	 * 关注
	 * @param fans
	 * @return
	 */
	@ResponseBody
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
	@RequestMapping(value = "concern")
	public int concern(Fans fans){
		User user = UserUtils.getUser();
		fans.setFansId(user.getId());
		int result = fansService.concern(fans);
		return result;
	}
	
}
