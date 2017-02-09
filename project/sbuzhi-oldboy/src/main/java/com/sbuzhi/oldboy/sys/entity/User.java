package com.sbuzhi.oldboy.sys.entity;

import com.sbuzhi.web.entity.DataEntity;
/**
 * 用户实体
 * @author stealth.Lee
 * @date 2017年2月7日 下午4:29:47
 */
public class User extends DataEntity<User>{
	
	/**
	 * 状态[0：冻结]
	 */
	public static final String STATUS_ENABLE = "0";
	
	/**
	 * 状态[1:启用]
	 */
	public static final String STATUS_FROZEN = "1";
	
	/**
	 * 账号
	 */
	private String username;
	
	/**
	 * 密码
	 */
	private String password;
	
	/**
	 * 昵称
	 */
	private String nickname;
	
	/**
	 * 真实姓名
	 */
	private String name;
	
	/**
	 * 电子邮箱
	 */
	private String email;
	
	/**
	 * 电话
	 */
	private String phone;
	
	/**
	 * 上次访问主机IP
	 */
	private String loginIp;
	
	/**
	 * 上次访问主机名称
	 */
	private String loginName;
	
	/**
	 * 上次访问时间
	 */
	private String loginTime;
	
	/**
	 * 冻结时间
	 */
	private String freezeTime;
	
	/**
	 * 状态
	 */
	private String status;
	
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

	public User() {
		super();
		this.status = STATUS_FROZEN;
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

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getFreezeTime() {
		return freezeTime;
	}

	public void setFreezeTime(String freezeTime) {
		this.freezeTime = freezeTime;
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

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password
				+ ", nickname=" + nickname + ", name=" + name + ", email="
				+ email + ", phone=" + phone + ", loginIp=" + loginIp
				+ ", loginName=" + loginName + ", loginTime=" + loginTime
				+ ", freezeTime=" + freezeTime + ", status=" + status
				+ ", insertBy=" + insertBy + ", insertDate=" + insertDate
				+ ", updateBy=" + updateBy + ", updateDate=" + updateDate
				+ ", remarks=" + remarks + ", delFlag=" + delFlag + ", id="
				+ id + ", useCustomId=" + useCustomId + "]";
	}
	
}
