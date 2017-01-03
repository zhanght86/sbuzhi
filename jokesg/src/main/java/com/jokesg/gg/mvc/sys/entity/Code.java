package com.jokesg.gg.mvc.sys.entity;

import com.jokesg.gg.common.utils.Const;
import com.jokesg.gg.common.utils.Encodes;
import com.jokesg.gg.common.utils.NubUtils;
import com.jokesg.gg.web.entity.DataEntity;
/**
 * 用户激活码实体
 * 用户和激活码之间是一对多的关系
 * 一个用户同时可以拥有多个激活码，但是同一个激活码只能属于一个用户
 * @author Stealth.Lee
 * @date 2016年10月22日 上午10:56:50
 */
public class Code extends DataEntity<Code> {
	
	/**
	 * 验证码类型:[1邮箱验证码	2：手机验证码]
	 */
	public static final String TYPE_EMAIL = "1";
	public static final String TYPE_PHONE = "2";
	
	/**
	 * 用户ID
	 */
	private String userId;

	/**
	 * 激活码
	 */
	private String code;
	
	/**
	 * 验证码类型
	 */
	private String type;

	public Code() {
		super();
	}
	
	public Code(String type) {
		this();
		this.code = Encodes.encodeMd5(NubUtils.randNub(Const.SALT));
		this.type = TYPE_EMAIL;
	}

	public Code(String userId, String type) {
		this(type);
		this.userId = userId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

}
