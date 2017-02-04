package com.sbuzhi.gg.mvc.sys.utils;

import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.UnavailableSecurityManagerException;
import org.apache.shiro.session.InvalidSessionException;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

import com.sbuzhi.gg.common.utils.SpringContextHolder;
import com.sbuzhi.gg.mvc.sys.dao.MenuDao;
import com.sbuzhi.gg.mvc.sys.entity.Menu;
import com.sbuzhi.gg.mvc.sys.entity.User;
import com.sbuzhi.gg.mvc.sys.realm.SystemAuthorizingRealm.Principal;
import com.sbuzhi.gg.mvc.sys.service.SystemService;
/**
 * 用户工具类
 * @author stealth.Lee
 * @date 2016年9月27日 上午10:56:37
 */
public class UserUtils {
	
	private static SystemService systemService =  SpringContextHolder.getBean(SystemService.class);
	private static MenuDao menuDao =  SpringContextHolder.getBean(MenuDao.class);

	/**
	 * 登录失败次数参数名称
	 */
	public static final String DEFAULT_LOGIN_ERROR_PARAM = "isValidateCodeLogin";

	/**
	 * 允许登录错误次数，当登录错误次数大于该值时，将在页面中显示验证码
	 */
	public static final Integer DEFAULT_LOGIN_ERROR_NUMBER = 3;
	
	/**
	 * 获取Subject
	 * @return
	 */
	public static Subject getSubject() {
		return SecurityUtils.getSubject();
	}

	/**
	 * 获取当前登录者对象
	 */
	public static Principal getPrincipal() {
		try {
			Subject subject = SecurityUtils.getSubject();
			Principal principal = (Principal) subject.getPrincipal();
			if (principal != null) {
				return principal;
			}
		} catch (UnavailableSecurityManagerException e) {

		} catch (InvalidSessionException e) {

		}
		return null;
	}

	/**
	 * 获取Session
	 * @return
	 */
	public static Session getSession(){
		try {
			Subject subject = getSubject();
			Session session = subject.getSession(false);
			if(session == null){
				session = subject.getSession();
			}
			if(session != null){
				return session;
			}
		} catch (InvalidSessionException e) {
			
		}
		return null;
	}
	
	/**
	 * 获当前取用户
	 * @return
	 */
	public static User getUser(){
		Principal principal = getPrincipal();
		if(principal != null){
			User user = systemService.get(principal.getId());
			if(user != null){
				return user;
			}
		}
		return new User();
	}
	
	/**
	 * 获取当前用户授权菜单，用户显示菜单列表，只显示2层
	 * @return
	 */
	public static List<Menu> getMenuTree() {
		List<Menu> lv1Menus = null;
		User user = getUser();
		Menu rootMenu = new Menu();
		rootMenu.setId("1");
		rootMenu.setUserId(user.getId());
		lv1Menus = menuDao.getSubMenus(rootMenu);
		for (Menu lv1Menu : lv1Menus) {
			lv1Menu.setUserId(user.getId());
			List<Menu> lv2Menus = menuDao.getSubMenus(lv1Menu);
			for (Menu lv2Menu : lv2Menus) {
				lv2Menu.setUserId(user.getId());
				List<Menu> lv3MenuList = menuDao.getSubMenus(lv2Menu);
				lv2Menu.setMenus(lv3MenuList);
			}
			lv1Menu.setMenus(lv2Menus);
		}
		return lv1Menus;
	}
	
	
	/**
	 * 检验用户是否是验证码登陆，并校验验证码错误次数
	 * @param username 账号
	 * @param isFail 是否错误，错误计数 +1
	 * @param clean 清空错误次数
	 * @return
	 */
	public static boolean isValidateCodeLogin(String username, boolean isFail, boolean clean){
		Session session = getSession();
		Integer errorNumber = (Integer) session.getAttribute(username);
		if(errorNumber == null){
			errorNumber = 0;
			// session.setAttribute(username, errorNumber);
		}
		if(isFail){
			errorNumber ++;
		}
		if(clean){
			errorNumber = 0;
		}
		session.setAttribute(username, errorNumber);
		return errorNumber >= DEFAULT_LOGIN_ERROR_NUMBER;
	}

}
