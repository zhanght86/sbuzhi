package com.sbuzhi.gg.components.datavalidation.annotation;

import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.ElementType.PARAMETER;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import com.sbuzhi.gg.components.datavalidation.enumeration.RegExType;
/**
 * 自定义数据校验注解:自定义正则
 * 提供几种常用的类型,详见枚举RegExType,支持自定义注解
 * 要使用自定义注解，请先将regExType设置为NONE或不设置
 * @author stealth.Lee
 * @date 2016年10月19日 上午9:11:39
 */
@Target({ METHOD, FIELD, PARAMETER })
@Retention(RUNTIME)
@Documented
public @interface RegEx {

	String message() default "{message:正则表达式有误}";

	RegExType regExType() default RegExType.NONE;

	String regex() default "";

}
