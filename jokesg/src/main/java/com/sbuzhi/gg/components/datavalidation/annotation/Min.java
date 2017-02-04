package com.sbuzhi.gg.components.datavalidation.annotation;

import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.ElementType.PARAMETER;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

/**
 * 自定义数据校验注解:设置最小长度,默认最小长度为0
 * @author Stealth.Lee
 * @date 2016年10月18日 下午8:43:21
 */
@Target({METHOD,FIELD,PARAMETER})
@Retention(RUNTIME)
@Documented
public @interface Min {

	String message() default "{message:最小长度非法}";
	
	int value() default 0;
	
}
