package com.jokesg.gg.mvc.sys.realm;

import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.stereotype.Service;

import com.jokesg.gg.common.config.Global;
import com.jokesg.gg.mvc.sys.entity.Role;
import com.jokesg.gg.mvc.sys.entity.User;
import com.jokesg.gg.mvc.sys.service.SystemService;
import com.jokesg.gg.mvc.sys.service.UserService;
import com.jokesg.gg.mvc.sys.utils.UserUtils;

/**
 * 自定义realm：系统安全认证实现类
 * Created by Stealth.Lee on 2016/9/24.
 */
@Service
public class SystemAuthorizingRealm extends AuthorizingRealm {

	@Resource
	private UserService userService;
	@Resource
	private SystemService systemService;

	/**
	 * 认证信息：用户登陆认证
	 * @param authenticationToken
	 * @return
	 * @throws AuthenticationException
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
		UsernamePasswordToken touToken = (UsernamePasswordToken) authenticationToken;
		String username = touToken.getUsername();
		if (StringUtils.isEmpty(username) || touToken.getPassword() == null) {
			throw new NullPointerException("账号或密码为空,请重新输入!");
		}
		User user = userService.getLoginName(username);
		if (user != null) {
			if(Global.NO.equals(user.getIsLogin())){
				throw new AuthenticationException("msg:非法操作次数过多 ，该账号当天已被锁定.");
			}
			// 更新登录IP，主机名称和时间
			systemService.updateUserLoginInfo(user);
			return new SimpleAuthenticationInfo(new Principal(user),user.getPassword(), getName());
		}else{
			return null;
		}
	}

	/**
	 * 授权信息：对用户进行授权
	 * @param principalCollection
	 * @return
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
		Principal principal = (Principal) getAvailablePrincipal(principalCollection);
		User user = userService.getLoginName(principal.getUsername());
		if(user != null){
			SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
			List<Role> roles = systemService.getRoles(principal.getUsername());
			for (Role role : roles) {
				info.addRole(role.getEnName());
			}
			return info;
		}
		return null;
	}

	/**
	 * 该方法作用是重写shiro密码验证，让shiro用自己写 的验证
	 */
	@PostConstruct
	private void initCredentialsMatche() {
		setCredentialsMatcher(new SimpleCredentialsMatcher());
	}
	
	/**
	 * 自定义Authentication对象，使得Subject除了携带用户的登录名外还可以携带更多信息.
	 */
	public static class Principal implements Serializable {

		private static final long serialVersionUID = 1L;

		private String id;

		private String username;

		private String name;

		public Principal(User user) {
			super();
			this.id = user.getId();
			this.username = user.getUsername();
			this.name = user.getName();
		}

		public String getId() {
			return id;
		}

		public void setId(String id) {
			this.id = id;
		}

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		@Override
		public String toString() {
			return "Principal [id=" + id + "]";
		}

		/**
		 * 获取SessionId
		 * @return
		 */
		public String getSessionId(){
			try {
				return (String) UserUtils.getSession().getId();
			} catch (Exception e) {
				return "";
			}
		}
		
	}

}
