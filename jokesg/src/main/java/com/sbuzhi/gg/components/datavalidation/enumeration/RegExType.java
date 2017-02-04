package com.sbuzhi.gg.components.datavalidation.enumeration;

/**
 * 正则表达式的几种常用类型
 * NONE：无（默认）
 * SPECIALCHAR：特殊字符（数字和字母组合为true）
 * CHINESE：中文字符
 * EMAIL：电子邮件
 * IP：地址
 * NUMBER：数字(只能是正整数，开始不能为0)
 * PHONENUMBER：电话号码(13、14、15、17、18)
 * @author stealth.Lee
 * @date 2016年10月19日 上午9:13:59
 */
public enum RegExType {

	NONE,
	SPECIALCHAR,
	CHINESE,
	EMAIL,
	IP,
	NUMBER,
	PHONE
	
}
