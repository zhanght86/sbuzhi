package com.jokesg.gg.common.utils;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 对象序列化工具类
 * @author stealth.Lee
 * @date 2016年10月21日 上午11:01:21
 */
public class SerializableUtils {
	
	private static Logger logger = LoggerFactory.getLogger(SerializableUtils.class);
	
	private static char[] HEX_ENCODE_TALBE = new char[] { '0', '1', '2', '3',
			'4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
	private static byte[] HEX_DECODE_TABLE = new byte[255];

	static {
		HEX_DECODE_TABLE['0'] = 0;
		HEX_DECODE_TABLE['1'] = 1;
		HEX_DECODE_TABLE['2'] = 2;
		HEX_DECODE_TABLE['3'] = 3;
		HEX_DECODE_TABLE['4'] = 4;
		HEX_DECODE_TABLE['5'] = 5;
		HEX_DECODE_TABLE['6'] = 6;
		HEX_DECODE_TABLE['7'] = 7;
		HEX_DECODE_TABLE['8'] = 8;
		HEX_DECODE_TABLE['9'] = 9;
		HEX_DECODE_TABLE['A'] = 10;
		HEX_DECODE_TABLE['B'] = 11;
		HEX_DECODE_TABLE['C'] = 12;
		HEX_DECODE_TABLE['D'] = 13;
		HEX_DECODE_TABLE['E'] = 14;
		HEX_DECODE_TABLE['F'] = 15;
		HEX_DECODE_TABLE['a'] = 10;
		HEX_DECODE_TABLE['b'] = 11;
		HEX_DECODE_TABLE['c'] = 12;
		HEX_DECODE_TABLE['d'] = 13;
		HEX_DECODE_TABLE['e'] = 14;
		HEX_DECODE_TABLE['f'] = 15;
	}
	
	protected static byte[] parseByteArray(String s) {
		char[] chars = s.toCharArray();
		byte[] result = new byte[chars.length / 2];
		for (int i = 0, j = 0; i < result.length; i++, j += 2) {
			int high = HEX_DECODE_TABLE[chars[j]];
			int low = HEX_DECODE_TABLE[chars[j + 1]];
			result[i] = (byte) (0xff & ((high << 4) + low));
		}
		return result;
	}

	protected static String formatByteArray(byte[] bytes) {
		StringBuffer result = new StringBuffer();
		for (int i = 0; i < bytes.length; i++) {
			result.append(HEX_ENCODE_TALBE[(bytes[i] & 0xf0) >>> 4]);
			result.append(HEX_ENCODE_TALBE[bytes[i] & 0x0f]);
		}
		return result.toString();
	}
	
	/**
	 * 序列化对象:想使用对象序列化，请调用ObjectUtil.objectToBytes(Object object)
	 * @param object
	 * @return
	 * @throws IOException 
	 */
	protected static byte[] serialize(Object object){
		if(!(object instanceof Serializable)){
			throw new IllegalArgumentException("对象序列化失败，原因可能是对象没有实现Serializable接口");
		}
		byte[] bytes = null;
		ByteArrayOutputStream baos = null;
		ObjectOutputStream oos = null;
		try {
			if(object != null){
				baos = new ByteArrayOutputStream();
				oos = new ObjectOutputStream(baos);
				oos.writeObject(object);
				bytes = baos.toByteArray();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(baos != null) baos.close();
				if(oos != null) oos.close();
			} catch (IOException e) {
				logger.debug("[SerializableUtils] 流关闭异常!",e);
			}
		}
		return bytes;
	}
	
	/**
	 * 反序列化对象：想使用对象反序列化，请调用ObjectUtil.bytesToObject(byte[] bytes)
	 * @param bytes
	 * @return
	 * @throws IOException 
	 */
	protected static Object unserialize(byte[] bytes){
		Object object = null;
		ByteArrayInputStream bais = null;
		ObjectInputStream ois = null;
		try {
			if(bytes != null && bytes.length > 0){
				bais = new ByteArrayInputStream(bytes);
				ois = new ObjectInputStream(bais);
				object = ois.readObject();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(bais != null) bais.close();
				if(ois != null) ois.close();
			} catch (IOException e) {
				System.out.println("流关闭异常");
			}
		}
		return object;
	}
	
}
