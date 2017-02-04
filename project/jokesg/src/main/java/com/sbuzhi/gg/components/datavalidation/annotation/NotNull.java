package com.sbuzhi.gg.components.datavalidation.annotation;

import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.ElementType.PARAMETER;
import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

/**
 * 自定义数据校验注解，验证参数是否不允许为空,默认true：不运行为空。
 * 将isNotNull()设置为false,参数必须为空
 * 该注解作用于方法、域和形参上
 * @author stealth.Lee
 * @date 2016年10月18日 上午11:39:03
 */
@Target({METHOD,FIELD,PARAMETER})
@Retention(RUNTIME)
@Documented
public @interface NotNull {
	
	String message() default "{message:不能为空}";
	
	boolean isNotNull() default true;
	
}
