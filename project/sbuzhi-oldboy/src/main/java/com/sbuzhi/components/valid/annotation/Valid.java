package com.sbuzhi.components.valid.annotation;

import static java.lang.annotation.ElementType.TYPE;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

/**
 * 数据校验注解
 * 该只能作用于类上，在类上加上此注解表示当前类下有可以被扫描并且可以校验的数据
 * 该注解不可以被继承，只作用一个类。
 * 如果可以被继承，每次都要频繁的区查询父类是否拥有该注解。
 * @author stealth.Lee
 * @date 2017年1月6日 上午11:53:09
 */
@Target({TYPE})
@Retention(RUNTIME)
//@Inherited	// 标识继承关系
@Documented
public @interface Valid {

}
