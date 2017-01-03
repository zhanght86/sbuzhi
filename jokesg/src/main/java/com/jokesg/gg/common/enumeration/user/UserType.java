package com.jokesg.gg.common.enumeration.user;

/**
 * 用户状态枚举类
 * 如果打算自定义自己的方法，那么必须在enum实例序列的最后添加一个分号。而且 Java 要求必须先定义 enum 实例。
 * @author Stealth.Lee
 * @date 2016年10月22日 上午10:16:58
 */
public enum UserType {
	
	ZERO("管理员","999"),ONE("游客","1"),TWO("普通用户","2"),THREE("企业用户","3");
	
	private String name;
	private String status;
	
	private UserType(String name,String  status){
		this.name = name;
		this.status = status;
	}

	@Override
	public String toString() {
		return "name:" + name + ",status:" + status;
	}
	
}
