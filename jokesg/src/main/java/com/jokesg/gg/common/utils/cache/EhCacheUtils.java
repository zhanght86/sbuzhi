package com.jokesg.gg.common.utils.cache;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;


/**
 * Cache工具类
 * @author skies Lee
 * @date 2016年11月1日 下午3:59:58
 */
public class EhCacheUtils {
	
	private static CacheManager cacheManager = CacheManager.create();

	private static final String SYS_CACHE = "sysCache";
	
	public static CacheManager getCacheManager() {
		return cacheManager;
	}
	
	/**
	 * 获取sysCache缓存
	 * @param key 键
	 * @return
	 */
	public static Object get(String key){
		return get(SYS_CACHE,key);
	}
	
	/**
	 * 写入sysCache缓存
	 * @param key 键
	 * @param value 值
	 */
	public static void put(String key,Object value){
		put(SYS_CACHE,key,value);
	}
	
	/**
	 * 从sysCache缓存中移除
	 * @param key 键
	 */
	public static void remove(String key){
		remove(SYS_CACHE, key);
	}
	
	/**
	 * 获取缓存
	 * @param name Cache
	 * @param key 键
	 * @return
	 */
	public static Object get(String name,String key){
		Element element = getCache(name).get(key);
		return element.getObjectValue();
	}
	
	/**
	 * 写入缓存
	 * @param name Cache
	 * @param key 键
	 * @param value 值
	 */
	public static void put(String name,String key,Object value){
		Element element = new Element(key, value);
		getCache(name).put(element);
	}
	
	/**
	 * 从缓存中移除
	 * @param name Cache
	 * @param key 键
	 */
	public static void remove(String name,String key){
		getCache(name).remove(key);
	}
	
	/**
	 * 清空当前Cache缓存
	 * @param name Cache
	 */
	public static void clear(String name){
		getCache(name).removeAll();
	}
	
	/**
	 * 获取一个Cache，没有创建一个
	 * @param name
	 * @return
	 */
	private static Cache getCache(String name){
		Cache cache = cacheManager.getCache(name);
		if(cache == null){
			cacheManager.addCache(name);
			cache = cacheManager.getCache(name);
			cache.getCacheConfiguration().setEternal(true);
		}
		return cache;
	}
	
	public static void main(String[] args) {
		put("user", "admin");
		System.out.println(get("user") +"sss");
		
	}
	
}
