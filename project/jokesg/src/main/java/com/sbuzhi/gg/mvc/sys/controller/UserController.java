package com.sbuzhi.gg.mvc.sys.controller;

import javax.annotation.Resource;

import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sbuzhi.gg.common.utils.Const;
import com.sbuzhi.gg.common.utils.EmailUtils;
import com.sbuzhi.gg.common.utils.redis.RedisCache;
import com.sbuzhi.gg.mvc.sys.dao.CodeDao;
import com.sbuzhi.gg.mvc.sys.dao.UserDao;
import com.sbuzhi.gg.mvc.sys.entity.Code;
import com.sbuzhi.gg.mvc.sys.entity.Role;
import com.sbuzhi.gg.mvc.sys.entity.User;
import com.sbuzhi.gg.mvc.sys.service.UserService;
import com.sbuzhi.gg.mvc.sys.utils.UserUtils;
import com.sbuzhi.gg.web.controller.BaseController;
/**
 * 用户Controller
 * @author Stealth.Lee
 * @date 2016年10月22日 上午9:49:57
 */

@Controller
@RequestMapping("user")
public class UserController extends BaseController {

	@Resource
	private UserDao userDao;
	@Resource
	private CodeDao codeDao;
	@Resource
	private UserService userService;
	
	/**
	 * 激活账号(升级为普通VIP)
	 * 1.判断用户验证码（Redis和数据库）是否在有效期（验证码一般有效时间为1天），若不在有效期，提示用户重新发送验证码
	 * 2.判断用户是否已经激活，如果激活，提示用户
	 * 3.若以上条件成立，则说明该用户是游客用户，则可以激活账号。
	 * 激活步骤：
	 * 		1.修改用户角色类型为普通VIP
	 * 		2.删除当前用户验证码记录（Redis和数据库记录）（逻辑删除）
	 * @param code
	 * @return
	 */
	@RequestMapping(value = {"activeUser"})
	public String activeUser(Model model,String oldCode){
		boolean flag = true;
		Code code = codeDao.getByCode(oldCode);
		if(code != null){
			String userRole = userDao.getUserRole(code.getUserId());
			// 如果查询到结果 ，并且结果==游客类型，说明该用户是游客用户，可以升级
			if (userRole != null && userRole.equals(Role.ROLE_VISITORS)) {
				String redisCode = RedisCache.get(Const.PREFIX + code.getUserId() + code.getType());
				if (redisCode.equals(code.getCode())) {
					userDao.updateUserRole(code.getUserId());
					RedisCache.del(Const.PREFIX + code.getUserId() + code.getType());
					codeDao.delete(code);
					model.addAttribute(Const.MESSAGE, "激活成功！");
					flag = false;
				} else {
					model.addAttribute(Const.MESSAGE, "验证码不匹配或已销毁.请重新发送");
				}
			} else {
				flag = false;
				model.addAttribute(Const.MESSAGE, "您已经是VIP，无须再此升级.");
			}
		} else {
			model.addAttribute(Const.MESSAGE, "验证码已过期或已销毁,请重新发送.");
		}
		model.addAttribute("flag", flag);
		return "sys/sendEmailSuccess";
	}
	
	/**
	 * 重新发送邮件激活码
	 * 1.直接删除原Code表记录（真删除）
	 * 2.新增Code表记录，覆盖redisCode
	 * 3.发送邮件
	 * @return
	 */
	@RequestMapping(value = {"sendEmail"})
	public String sendEmail(Model model,String userId,String type){
		User user = userDao.get(userId);
		if(user != null){
			Code code = null;
			if(type.equals("1")){
				code = new Code(userId,Code.TYPE_EMAIL);
			} else if(type.equals("2")) {
				code = new Code(userId,Code.TYPE_PHONE);
			}
			RedisCache.set(Const.PREFIX + user.getId() + code.getType(), code.getCode(), 60*60*24);
			code.preInsert();
			codeDao.delete(code.getId());
			codeDao.insert(code);
			EmailUtils.sendEmail(code,user.getEmail());
			model.addAttribute("user", user);
			model.addAttribute(Const.MESSAGE, "发送成功!请注意查收邮件。邮件激活码有效期为24个小时，请立即前往邮箱升级！");
		} else {
			model.addAttribute(Const.MESSAGE, "发送失败，该邮箱账号不存在，请检查后重新发送!");
		}
		return "sys/sendEmailSuccess";
	}
	
	@RequiresRoles(value = {"ordinary","company","admin"}, logical = Logical.OR)
	@RequestMapping(value = "userInfo")
	public String userInfo(Model model, User user){
		User u = UserUtils.getUser();
		User user2 = userService.getLoginName(u.getUsername());
		if(user != null){
			model.addAttribute("user", user2);
			return "sys/userInfo";
		}
		return "sys/login2";
	}
	
}
