package com.jokesg.gg.components.datavalidation.annotation;

import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.ElementType.PARAMETER;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

/**
 * 自定义数据校验注解：日期
 * 格式XXXX-XX-XX。以下格式错误
 * 1.2014.01.02
 * 2.2015-1-02
 * 3.2016-01-1
 * 4.2017/01/02
 * 5.2018-02-30
 * 6.2019-13-11
 * @author stealth.Lee
 * @date 2016年10月19日 下午2:14:28
 */
@Target({ METHOD, FIELD, PARAMETER })
@Retention(RUNTIME)
@Documented
public @interface Date {
	
	String message() default "日期格式不正确";
	
}
