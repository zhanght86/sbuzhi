package com.sbuzhi.gg.components.datavalidation.utils;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.regex.Pattern;

import org.apache.commons.lang3.StringUtils;

import com.sbuzhi.gg.components.datavalidation.annotation.Length;
import com.sbuzhi.gg.components.datavalidation.annotation.Max;
import com.sbuzhi.gg.components.datavalidation.annotation.Min;
import com.sbuzhi.gg.components.datavalidation.annotation.NotNull;
import com.sbuzhi.gg.components.datavalidation.annotation.RegEx;
import com.sbuzhi.gg.components.datavalidation.enumeration.RegExType;
import com.sbuzhi.gg.components.datavalidation.exception.LengthException;
import com.sbuzhi.gg.components.datavalidation.exception.NotNullException;
import com.sbuzhi.gg.components.datavalidation.exception.RegExException;

/**
 * 数据校验工具类
 * @author stealth.Lee
 * @date 2016年10月19日 上午9:37:10
 */
public class ValidUtils {
	
	public static final String SPECIALCHARACTER = "^[A-Za-z0-9]+$"; 
	public static final String CHINESE = "^[\u4E00-\u9FA5]+$"; 
	public static final String EMAIL = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$"; 
	public static final String IP = "\\d+\\.\\d+\\.\\d+\\.\\d+"; 
	public static final String NUMBER = "^[1-9]\\d+$"; 
	public static final String PHONE = "^1[34578]\\d{9}";
	
	private static RegEx regEx;
	private static NotNull notNull;
	private static Length length;
	private static Min min;
	private static Max max;

	/**
	 * 验证几种常见的正则
	 * @param type
	 * @param regex
	 * @return
	 */
	public static boolean validRegEx(RegExType type,String regex,String value) {
		if (type == RegExType.NONE && regex != null)
			return Pattern.matches(regex, value);
		else if (type == RegExType.SPECIALCHAR )
			return Pattern.matches(SPECIALCHARACTER, value);
		else if (type == RegExType.CHINESE)
			return Pattern.matches(CHINESE, value);
		else if (type == RegExType.EMAIL)
			return Pattern.matches(EMAIL, value);
		else if (type == RegExType.IP)
			return Pattern.matches(IP, value);
		else if (type == RegExType.NUMBER)
			return Pattern.matches(NUMBER, value);
		else if (type == RegExType.PHONE)
			return Pattern.matches(PHONE, value);
		return false;
	}
	
	public static void isAnnotationType(Field field, Object object) throws Exception {
		Annotation[] declaredAnnotations = field.getDeclaredAnnotations();
		for (Annotation annotation : declaredAnnotations) {
			switch (annotation.annotationType().toString()) {
			case "interface com.jokesg.gg.annotation.validation.RegEx":
				validateRegEx(field, object);
				break;
			case "interface com.jokesg.gg.annotation.validation.NotNull":
				validateNotNull(field, object);
				break;
			case "interface com.jokesg.gg.annotation.validation.Length":
				validateLength(field,object);
				break;
			case "interface com.jokesg.gg.annotation.validation.Min":
				validateMin(field, object);
				break;
			case "interface com.jokesg.gg.annotation.validation.Max":
				validateMax(field, object);
				break;
			default:
				break;
			}

		}
	}
	
	private static void validateRegEx(Field field, Object object)
			throws Exception {
		Object value = field.get(object);
		regEx = field.getAnnotation(RegEx.class);
		if (regEx == null || value == null)
			return;
		
		if (validRegEx(regEx.regExType(),regEx.regex(),value.toString())) {
			return;
		}
		String message = "{message:正则表达式有误}";
		switch (regEx.regExType()) {
		case SPECIALCHAR:
			message = regEx.message().equals(message) ? field.getName()
					+ ":非法字符（该字段必须为数字字母组合）!" : regEx.message();
			throw new RegExException(message);
		case CHINESE:
			message = regEx.message().equals(message) ? field.getName()
					+ ":非法汉字（该字段必须为汉字）!" : regEx.message();
			throw new RegExException(message);
		case EMAIL:
			message = regEx.message().equals(message) ? field.getName()
					+ ":非法邮箱!" : regEx.message();
			throw new RegExException(message);
		case IP:
			message = regEx.message().equals(message) ? field.getName()
					+ ":非法IP!" : regEx.message();
			throw new RegExException(message);
		case NUMBER:
			message = regEx.message().equals(message) ? field.getName()
					+ ":非法数字（该字段必须为数字）!" : regEx.message();
			throw new RegExException(message);
		case PHONE:
			message = regEx.message().equals(message) ? field.getName()
					+ ":非法手机号!" : regEx.message();
			throw new RegExException(message);
		default:
			message = regEx.message().equals(message) ? field.getName()
					+ message : regEx.message();
			throw new RegExException(message);
		}
	}

	
	private static void validateNotNull(Field field, Object object) throws Exception {
		Object value = field.get(object);
		notNull = field.getAnnotation(NotNull.class);
		if (notNull == null)
			return;
		if (notNull.isNotNull()) {
			String message = notNull.message().equals("{message:不能为空}") ? field.getName() + ":" + notNull.message() : notNull.message();
			if (value == null || StringUtils.isBlank(value.toString())) {
				throw new NotNullException(message);
			}
		}else if(!notNull.isNotNull() &&  value != null){
			throw new NotNullException(field.getName() + "必须为空!");
		}
	}
	
	private static void validateLength(Field field, Object object) throws Exception {
		Object value = field.get(object);
		length = field.getAnnotation(Length.class);
		if (length == null || value == null)
			return;
		if (value.toString().length() < length.min() || value.toString().length() > length.max()) {
			String message = length.message().equals("{message:不在设定长度范围内}") ? field.getName() + ":" + length.message() + "[" + length.min() + "-" + length.max() + "]" : length.message();
			throw new LengthException(message);
		}
	}
	
	private static void validateMin(Field field, Object object) throws Exception {
		Object value = field.get(object);
		min = field.getAnnotation(Min.class);
		if (min == null || value == null)
			return;
		if (value.toString().length() < min.value()) {
			String message = min.message().equals("{message:最小长度非法}") ? field.getName() + ":" + min.message() + "[" + min.value() + "]" : min.message();
			throw new LengthException(message);
		}
	}
	
	private static void validateMax(Field field, Object object) throws Exception {
		Object value = field.get(object);
		max = field.getAnnotation(Max.class);
		if (max == null || value == null)
			return;
		if (value.toString().length() > max.value()) {
			String message = max.message().equals("{message:最大长度非法}") ? field.getName() + ":" + max.message() + "[" + max.value() + "]" : max.message();
			throw new LengthException(message);
		}
	}
	
	public static void main(String[] args) {
		System.out.println(validRegEx(RegExType.NUMBER,null,"1215541232"));
	}
	
}
