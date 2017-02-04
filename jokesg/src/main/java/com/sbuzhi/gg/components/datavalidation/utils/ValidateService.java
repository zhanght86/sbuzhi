package com.sbuzhi.gg.components.datavalidation.utils;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;

import com.sbuzhi.gg.common.annotation.test.User1;
import com.sbuzhi.gg.components.datavalidation.annotation.Valid;
/**
 * 数据校验工具
 * 用法：在需要校验的实体对象上加上@Valid注解.
 * 在字段上加上需要验证的注解，例如 private String email;这个字段规定不能为空，必须是邮箱格式
 * 只需要在这个字段上加上@NotNull 和@RegEx(regExType = RegExType.EMAIL)
 * 最后调用ValidateService.valid(object)就OK了
 * 具体用法详见各个枚举类
 * @author stealth.Lee
 * @date 2016年10月19日 下午4:05:14
 */
public class ValidateService {
	
	public ValidateService() {
		super();
	}

	/**
	 * 先查找父类是否有Valid注解，找到最终有Valid注解父类
	 * 然后依次往下查找子类是否有数据校验注解。有则判断。无则跳过
	 * 如果父类没有Valid注解，查看本类中是否有Valid注解，有则查看本类是否有数据校验注解，
	 * 有则判断，无则跳过
	 * @param object
	 * @throws Exception
	 */
	public static void valid(Object object) throws Exception {
		Class<? extends Object> cs = object.getClass();
		for (; cs != Object.class; cs = cs.getSuperclass()) {
			Annotation[] declaredAnnotations = cs.getAnnotations();
			if (declaredAnnotations.length != 0) {
				for (Annotation annotation : declaredAnnotations) {
					if (annotation
							.annotationType()
							.toString()
							.equals("interface com.jokesg.gg.annotation.validation.Valid")) {
						Field[] fields = cs.getDeclaredFields();
						for (Field field : fields) {
							field.setAccessible(true);
							ValidUtils.isAnnotationType(field, object);
							field.setAccessible(false);
						}
					}
				}
			}
		}
	}

	private static void test(User1 user ){
		try {
			ValidateService.valid(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private static void test1(Object object){
		Class<? extends Object> cs = object.getClass();
		for (; cs != Object.class; cs = cs.getSuperclass()) {
			Valid annotation = cs.getAnnotation(Valid.class);
			System.out.println(annotation + "," + cs);
//			System.out.println(cs.toString());
		}
	}

	public static void main(String[] args) {
		User1 user = new User1("admin", "aaaaaa");
		user.setId("1");
		user.setPhone("15032201112");
		user.setAge("20");
		user.setEmail("31497@q.c");
		user.setIp("127.0.0.0");
		user.setText("汉子");
		user.setZi("2014-01-02");
		test(user);
		System.out.println("success!");
		test1(user);
	}

}
