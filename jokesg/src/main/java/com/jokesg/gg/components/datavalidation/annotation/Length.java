package com.jokesg.gg.components.datavalidation.annotation;

import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.ElementType.PARAMETER;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

/**
 * 自定义数据校验注解：设置参数的长度范围,默认[0-100]
 * min():最小值 ; max():最大值
 * @author stealth.Lee
 * @date 2016年10月18日 下午4:13:42
 */
@Target({METHOD,FIELD,PARAMETER})
@Retention(RUNTIME)
@Documented
public @interface Length {
	
	String message() default "{message:不在设定长度范围内}";
	
	int min() default 0;
	
	int max() default 100;
	
//	Regex
	
}
