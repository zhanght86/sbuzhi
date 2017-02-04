package com.sbuzhi.gg.components.datavalidation.annotation;

import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.ElementType.PARAMETER;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

/**
 * 自定义校验数据注解:设置最大长度，默认最大长度为100
 * @author Stealth.Lee
 * @date 2016年10月18日 下午8:56:27
 */
@Target({METHOD,FIELD,PARAMETER})
@Retention(RUNTIME)
@Documented
public @interface Max {
	
	String message() default "{message:最大长度非法}";

	int value() default 100;
	
}
