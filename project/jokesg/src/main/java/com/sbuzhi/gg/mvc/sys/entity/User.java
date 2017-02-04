package com.sbuzhi.gg.mvc.sys.entity;


import java.util.ArrayList;
import java.util.List;

import com.sbuzhi.gg.common.config.Global;
import com.sbuzhi.gg.components.datavalidation.annotation.NotNull;
import com.sbuzhi.gg.components.datavalidation.annotation.RegEx;
import com.sbuzhi.gg.components.datavalidation.enumeration.RegExType;
import com.sbuzhi.gg.web.entity.DataEntity;
import com.sbuzhi.gg.web.entity.Paging;

/**
 * User实体 
 * User有以下几种情况
 * 1.正常标记：DelFlag=1 非正常标记：DelFlag=0
 * 2.正常状态：Status=1  非正常状态：Status=0
 * Created by Stealth.Lee on 2016/9/10.
 */
public class User extends DataEntity<User> {
	
	/**
	 * 是否企业认证[0:未认证 1:认证]
	 */
	public static final String ISCOMPANY_NO = "0";
	public static final String ISCOMPANY_YEW = "1";

	/**
	 * 状态[0：冻结  1:启用]
	 */
	public static final String STATES_ENABLE = "0";
	public static final String STATES_FROZEN = "1";
	
	/**
	 * 账号
	 */
	@NotNull(message = "msg:账号不能为空")
	private String username;

	/**
	 * 密码
	 */
	@NotNull(message = "msg:密码不能为空")
	private String password;

	/**
	 * 真实姓名
	 */
	private String name;

	/**
	 * 昵称
	 */
	private String nickname;

	/**
	 * 电子邮箱
	 */
	@RegEx(regExType = RegExType.EMAIL,message = "{msg:电子邮箱不合法}")
	@NotNull(message = "{msg:账号不能为空}")
	private String email;

	/**
	 * 手机号
	 */
	@RegEx(regExType = RegExType.PHONE,message = "{msg:手机号不合法}")
	@NotNull(message = "{msg:账号不能为空}")
	private String phone;

	/**
	 * 头像
	 */
	private String photo;

	/**
	 * 企业ID
	 */
	private String companyId;

	/**
	 * 企业认证
	 */
	private String isCompany;

	/**
	 * 本次访问主机IP
	 */
	private String loginIp;
	
	/**
	 * 本次访问主机名称
	 */
	private String loginName;

	/**
	 * 本次访问时间
	 */
	private String loginTime;

	/**
	 * 状态
	 */
	private String status;
	
	/**
	 * 是否可登陆
	 */
	private String isLogin;
	
	/**
	 * 上次访问主机IP
	 */
	private String oldLoginIp;
	
	/**
	 * 上次访问主机名称
	 */
	private String oldLoginName;
	
	/**
	 * 上次访问时间
	 */
	private String oldLoginTime;

	
	/**
	 * 根据角色查询
	 */
	private Role role;
	
	/**
	 * 用户拥有的角色列表
	 */
	private List<Role> roles = new ArrayList<Role>();
	
	/**
	 * 分页
	 */
	private Paging paging;
	
	/**
	 * 粉丝总数
	 */
	private int fansCount;
	
	/**
	 * 关注总数
	 */
	private int concernCount;
	
	/**
	 * 是否关注
	 */
	private boolean concern;
	
	/**
	 * 新用户默认值 
	 * 企业认证:0  
	 * 状态:1 
	 * 是否可登陆：1
	 */
	public User() {
		super();
		this.isCompany = ISCOMPANY_NO;
		this.status = STATES_FROZEN;
		this.isLogin = Global.YES;
	}
	
	public User(String id) {
		this();
		super.id = id;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public String getIsCompany() {
		return isCompany;
	}

	public void setIsCompany(String isCompany) {
		this.isCompany = isCompany;
	}

	public String getLoginIp() {
		return loginIp;
	}

	public void setLoginIp(String loginIp) {
		this.loginIp = loginIp;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(String loginTime) {
		this.loginTime = loginTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	public String getOldLoginIp() {
		return oldLoginIp;
	}

	public void setOldLoginIp(String oldLoginIp) {
		this.oldLoginIp = oldLoginIp;
	}

	public String getOldLoginName() {
		return oldLoginName;
	}

	public void setOldLoginName(String oldLoginName) {
		this.oldLoginName = oldLoginName;
	}

	public String getOldLoginTime() {
		return oldLoginTime;
	}

	public void setOldLoginTime(String oldLoginTime) {
		this.oldLoginTime = oldLoginTime;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
	
	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public String getIsLogin() {
		return isLogin;
	}

	public void setIsLogin(String isLogin) {
		this.isLogin = isLogin;
	}

	public Paging getPaging() {
		return paging;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	public int getFansCount() {
		return fansCount;
	}

	public void setFansCount(int fansCount) {
		this.fansCount = fansCount;
	}

	public int getConcernCount() {
		return concernCount;
	}

	public void setConcernCount(int concernCount) {
		this.concernCount = concernCount;
	}
	
	public boolean isConcern() {
		return concern;
	}

	public void setConcern(boolean concern) {
		this.concern = concern;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password
				+ ", name=" + name + ", nickname=" + nickname + ", email="
				+ email + ", phone=" + phone + ", photo=" + photo
				+ ", companyId=" + companyId + ", isCompany=" + isCompany
				+ ", loginIp=" + loginIp + ", loginName=" + loginName
				+ ", loginTime=" + loginTime + ", status=" + status
				+ ", isLogin=" + isLogin + ", oldLoginIp=" + oldLoginIp
				+ ", oldLoginName=" + oldLoginName + ", oldLoginTime="
				+ oldLoginTime + ", role=" + role + ", roles=" + roles
				+ ", paging=" + paging + ", fansCount=" + fansCount
				+ ", concernCount=" + concernCount + ", insertBy=" + insertBy
				+ ", insertDate=" + insertDate + ", updateBy=" + updateBy
				+ ", updateDate=" + updateDate + ", remarks=" + remarks
				+ ", delFlag=" + delFlag + ", id=" + id + ", isNewRecord="
				+ isNewRecord + "]";
	}

}
