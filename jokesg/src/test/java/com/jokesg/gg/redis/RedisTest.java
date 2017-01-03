package com.jokesg.gg.redis;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.jokesg.gg.common.utils.ObjectUtil;
import com.jokesg.gg.common.utils.ObjectUtil.T;
import com.jokesg.gg.common.utils.redis.RedisCache;

public class RedisTest {
	

	/**
	 * 对设置和获取字符串缓存的测试
	 */
	@Test
	public void testSetAndGet() {
		String result = RedisCache.set("name", "zs", 0);
		System.out.println(result);
		String value = RedisCache.get("name");
		System.out.println(value);
	}
	
	/**
	 * 对设置和获取对象缓存的测试
	 */
	@Test
	public void testSetObjectAndGetObject() {
		ObjectUtil.T t = new ObjectUtil.T();
		t.setId(1);
		t.setName("ls");
		String result = RedisCache.setObject("obj", t, 0);
		System.out.println(result);
		Object value = RedisCache.getObject("obj");
		ObjectUtil.T a = (T) value;
		System.out.println(a.getName());
	}
	
	/**
	 * 设置字符串类型缓存到List的测试
	 */
	@Test
	public void setList(){
		List<String> ls = new ArrayList<String>();
		ls.add("zs");
		ls.add("ls");
		ls.add("ww");
//		long result = RedisCache.setList("names", ls, 0);
//		System.out.println(result);
	}
	
	/**
	 * 删除缓存测试
	 */
	@Test
	public void del(){
		long del = RedisCache.del("obj");
		System.out.println(del);
	}

	/**
	 * 清空缓存测试
	 */
	@Test
	public void clear(){
		RedisCache.clear();
	}
	
	@Test
	public void fun1() {
		String value = RedisCache.get("name");
		System.out.println(value);
	}
}
