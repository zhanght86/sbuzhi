package com.jokesg.gg.common.annotation.test;

import com.jokesg.gg.components.datavalidation.annotation.Length;
import com.jokesg.gg.components.datavalidation.annotation.Max;
import com.jokesg.gg.components.datavalidation.annotation.Min;
import com.jokesg.gg.components.datavalidation.annotation.NotNull;
import com.jokesg.gg.components.datavalidation.annotation.RegEx;
import com.jokesg.gg.components.datavalidation.enumeration.RegExType;

public class User1 extends Entity1{
	
	@Min(value = 4 ,message = "账号最小为4位")
	@Max(value = 10,message = "账号最长为10位")
	@NotNull(message = "账号不能为空")
	private String username;
	
	@RegEx(regExType = RegExType.SPECIALCHAR)
	@Length(min = 6,max = 16)
	private String password;
	
	@RegEx(regExType = RegExType.PHONE)
	private String phone;
	
	@RegEx(regExType = RegExType.EMAIL)
	private String email;
	
	@RegEx(regExType = RegExType.CHINESE)
	private String text;
	
	@RegEx(regExType = RegExType.IP)
	private String ip;
	
	@RegEx(regExType = RegExType.NUMBER )
	private String age;
	
	@RegEx(regex = "^[0-9]{4}[-/.](((0[13578]|(10|12))[-/.](0[1-9]|[1-2][0-9]|3[0-1]))|(02-(0[1-9]|[1-2][0-9]))|((0[469]|11)[-/.](0[1-9]|[1-2][0-9]|30)))$" ,message = "我自己定义的正则。" )
	private String zi;
	
	public String getZi() {
		return zi;
	}

	public void setZi(String zi) {
		this.zi = zi;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public User1(String username, String password) {
		super();
		this.username = username;
		this.password = password;
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
	
}
