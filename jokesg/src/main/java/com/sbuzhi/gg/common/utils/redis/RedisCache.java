package com.sbuzhi.gg.common.utils.redis;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

import com.sbuzhi.gg.common.utils.ObjectUtil;
import com.sbuzhi.gg.common.utils.StringUtil;

/**
 * RedisCache支持工具类
 * @author stealth.Lee
 * @date 2016年10月20日 下午2:58:17
 */
public class RedisCache {
	
	private static Logger logger = LoggerFactory.getLogger(RedisCache.class);
	
	/**
	 * Redis主机地址
	 */
	public static final String REDIS_HOST = "127.0.0.1";
	
	/**
	 * 金立Redis主机地址
	 */
	public static final String GIONEE_HOST = "9985a4361e9144e8.m.cnhza.kvstore.aliyuncs.com";
	
	/**
	 * Redis端口号
	 */
	public static final int REDIS_PORT = 6379;
	
	/**
	 * Redis访问密码
	 */
	public static final String REDIS_PASSWORD = "stealth";
	
	/**
	 * 获取JedisPool
	 * @return
	 */
	private static JedisPool getPool() {
		JedisPoolConfig config = new JedisPoolConfig();
		// 最大空闲连接数, 应用自己评估，不要超过ApsaraDB for Redis每个实例最大的连接数
		config.setMaxIdle(200);
		// 最大连接数, 应用自己评估，不要超过ApsaraDB for Redis每个实例最大的连接数
		config.setMaxTotal(300);
		config.setTestOnBorrow(false);
		config.setTestOnReturn(false);
		return new JedisPool(config, REDIS_HOST, REDIS_PORT, 0, REDIS_PASSWORD);
	}
	
	/**
	 * 获取Jedis
	 * @param args
	 */
	private static Jedis getResource() {
		Jedis jedis = getPool().getResource();
		if (!jedis.isConnected()) {
			logger.warn("[warn.getResource]:redis reconnect!");
			jedis.connect();
		}
		return jedis;
	}
	
	/**
	 * 设置字符串类型缓存
	 * @param key 键
	 * @param value 值
	 * @param seconds 超时时间，0为不超时
	 * @return
	 */
	public static String set(String key,String value,int seconds){
		Jedis jedis = null;
		String result = null;
		try {
			jedis = getResource();
			result = jedis.set(key, value);
			if(seconds != 0){
				jedis.expire(key, seconds);
			}
			logger.debug("[set 设置Redis] key={},value={},seconds={}", key, value, seconds);
		} catch (Exception e) {
			logger.warn("[Err:set 设置Redis] key={},value={},seconds={}", key, value, seconds, e);
		} finally {
			close(jedis);
		}
		return result;
	}
	
	/**
	 * 获取字符串类型缓存
	 * @param key 键
	 * @return 值
	 */
	public static String get(String key){
		Jedis jedis = null;
		String value = null;
		try {
			jedis = getResource();
			if(jedis.exists(key)){
				value = jedis.get(key);
				logger.debug("[get 获取Redis] key={},value={}", key, value);
			}
		} catch (Exception e) {
			logger.warn("[Err:get 获取Redis] key={},value={}", key, value, e);
		} finally {
			close(jedis);
		}
		return value;
	}
	
	/**
	 * 设置对象类型缓存
	 * 存的时候key:baty[],value:序列化
	 * @param key 键
	 * @param value 值
	 * @param seconds 超时时间，0为不超时
	 * @return
	 */
	public static String setObject(String key,Object value,int seconds){
		Jedis jedis = null;
		String result = null;
		try {
			jedis = getResource();
			result = jedis.set(getBytesKey(key), ObjectUtil.objectToBytes(value));
			if(seconds != 0){
				jedis.expire(key, seconds);
			}
			logger.debug("[setObject] key={},value={},seconds={}", key, value, seconds);
		} catch (Exception e) {
			logger.warn("[Err:setObject] key={},value={},seconds={}", key, value, seconds, e);
		} finally {
			close(jedis);
		}
		return result;
	}
	
	/**
	 * 获取对象类型缓存
	 * @param key
	 * @return
	 */
	public static Object getObject(String key){
		Jedis jedis = null;
		Object value = null;
		try {
			jedis = getResource();
			if(jedis.exists(getBytesKey(key))){
				value = ObjectUtil.bytesToObject(jedis.get(getBytesKey(key)));
				logger.debug("[getObject] key={},value={}", key, value);
			}
		} catch (Exception e) {
			logger.warn("[Err:getObject] key={},value={}", key, value, e);
		} finally {
			close(jedis);
		}
		return value;
	}
	
	/**
	 * 删除字符串类型缓存
	 * @param key
	 * @return
	 */
	public static long del(String key){
		Jedis jedis = null;
		long result = 0;
		try {
			jedis = getResource();
			if(jedis.exists(key)){
				result = jedis.del(key);
				logger.debug("[del] key={}", key);
			} else {
				logger.debug("[Err:del] key={}", key);
			}
		} catch (Exception e) {
			logger.warn("[Err:del] key={}", key);
		} finally {
			close(jedis);
		}
		return result;
	}
	
	/**
	 * 清空缓存
	 * @return
	 */
	public static void clear(){
		Jedis jedis = null;
		try {
			jedis = getResource();
			jedis.flushAll();
			logger.debug("[clear]");
		} catch (Exception e) {
			logger.warn("[Err:clear]");
		} finally {
			close(jedis);
		}
	}
	
	/**
	 * 释放资源
	 * @param jedis
	 */
	private static void close(Jedis jedis){
		if(jedis != null){
			jedis.close();
		}
	}
	
	/**
	 * 获取byte[]类型的key
	 * @param key
	 * @return
	 */
	private static byte[] getBytesKey(Object key){
		if(key instanceof String){
			return StringUtil.parseBytes((String) key);
		}else{
			return ObjectUtil.objectToBytes(key);
		}
	}
	
	public static void main(String[] args) {
		get("code");
	}
	
}
