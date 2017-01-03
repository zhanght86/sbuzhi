package com.jokesg.gg.components.datavalidation.annotation;

import static java.lang.annotation.ElementType.TYPE;
import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.PARAMETER;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
/**
 * 自定义校验数据注解
 * 标记该注解表示该注解的类中或对象下有数据校验注解
 * 该注解只能作用于类、对象上，可以被继承。
 * @author stealth.Lee
 * @date 2016年10月18日 下午1:41:27
 */
@Target({TYPE,FIELD,PARAMETER})
@Retention(RUNTIME)
@Inherited
@Documented
public @interface Valid{

}
