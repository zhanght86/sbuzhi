package com.jokesg.gg.common.utils;

import java.io.Serializable;

import org.apache.commons.lang3.StringUtils;


/**
 * 对象操作工具类
 * @author stealth.Lee
 * @date 2016年10月20日 下午4:27:02
 */
public class ObjectUtil {
	
	/**
	 * 判断所有对象是否都为空
	 * <pre>
	 * ObjectUtil.isAllNull("")			= true;
	 * ObjectUtil.isAllNull(null)		= true;
	 * ObjectUtil.isAllNull("",null)	= true;
	 * ObjectUtil.isAllNull("  ")		= false;
	 * ObjectUtil.isAllNull(6)			= false;
	 * ObjectUtil.isAllNull(null,"abc")	= false;
	 * ObjectUtil.isAllNull("abc",6)	= false;
	 * </pre>
	 * @param objs
	 * @return 都为空返回true，有一个不为空就返回false
	 */
	public static boolean isAllBlank(Object...objs){
		for (Object obj : objs) {
			if(obj instanceof String){
				if(StringUtils.isNotEmpty((String) obj)) {
					return false; 
				}
				continue;
			}
			if(obj != null) {
				return false;
			}
		}
		return true;
	}
	
	/**
	 * 判断所有对象是否都不为空
	 * <pre>
	 * ObjectUtil.isNotAllBlank("  ")				= true;
	 * ObjectUtil.isNotAllBlank("abc")				= true;
	 * ObjectUtil.isNotAllBlank("abc",new Date())	= true;
	 * ObjectUtil.isNotAllBlank(null)				= false;
	 * ObjectUtil.isNotAllBlank("")					= false;
	 * ObjectUtil.isNotAllBlank("abc",null)			= false;
	 * </pre>
	 * @param objs
	 * @return 都不为空返回true，
	 */
	public static boolean isNotAllBlank(Object...objs){
		for (Object obj : objs) {
			if(obj instanceof String){
				if(StringUtils.isEmpty((String) obj)) {
					return false; 
				}
			}
			if(obj == null) {
				return false;
			}
		}
		return true;
	}

	/**
	 * Object类型转Byte[](序列化对象)
	 * @param object
	 * @return
	 */
	public static byte[] objectToBytes(Object object){
		try {
			return SerializableUtils.serialize(object);
		} catch (Exception e) {
			
		}
		return null;
	}
	
	/**
	 * Byte[]类型转Object(反序列化对象)
	 * @param bytes
	 * @return
	 */
	public static Object bytesToObject(byte[] bytes){
		try {
			return SerializableUtils.unserialize(bytes);
		} catch (Exception e) {
			
		}
		return null;
	}
	
	/**
	 * Object类型转String
	 * @param object
	 * @return
	 */
	public static String objectToString(Object object) {
		return SerializableUtils.formatByteArray(objectToBytes(object));
	}
	
	/**
	 * String转Object
	 * @param str
	 * @return
	 * @throws Exception
	 */
	public static Object stringToObject(String str){
		if(str == null) {
			return null;
		}
		byte[] bytes = SerializableUtils.parseByteArray(str);
		return bytesToObject(bytes);
	}
	

	public static void main(String[] args) {
		boolean re = isAllBlank("");
		System.out.println(re);
	}
	
	/**
	 * 测试序列化和反序列化实体（暂时没有其他用处）
	 * @author skies Lee
	 * @date 2016年10月20日 下午4:24:12
	 */
	public static class T implements Serializable{
		
		private static final long serialVersionUID = 1L;

		private int id;
		
		private String name;

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		@Override
		public String toString() {
			return "T [id=" + id + ", name=" + name + "]";
		}
		
	}
	
}
