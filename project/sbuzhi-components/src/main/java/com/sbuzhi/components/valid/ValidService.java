package com.sbuzhi.components.valid;

import java.lang.reflect.Field;

import javax.annotation.Resource;

import com.sbuzhi.components.valid.annotation.Max;
import com.sbuzhi.components.valid.annotation.Valid;

/**
 * 数据校验工具
 * @author stealth.Lee
 * @date 2017年1月6日 上午11:50:19
 */
public class ValidService {

	public ValidService() {
		super();
	}

	public static void valid(Object object){
		Class<? extends Object> cs = object.getClass();
		if(cs.getAnnotation(Valid.class) != null){
			Field[] fields = cs.getDeclaredFields();	// 返回直接存在于该类下的所有元素
			for (Field field : fields) {
				field.setAccessible(true);
				isAnnotationType(field, object);
				field.setAccessible(false);
			}
		}
	}
	
	private static void isAnnotationType(Field field, Object object){
		System.out.println(field.getAnnotation(Resource.class));
		if(field.isAnnotationPresent(Max.class)){
			System.out.println("1");
		}
		if(field.isAnnotationPresent(Resource.class)){
			System.out.println("2");
		}
	}
	
}
