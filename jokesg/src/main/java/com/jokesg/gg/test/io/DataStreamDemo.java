package com.jokesg.gg.test.io;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/**
 * 数据流
 * @author stealth.Lee
 * @date 2016年12月29日 上午10:55:57
 */
public class DataStreamDemo {

	public static void main(String[] args) {
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		DataOutputStream dos = new DataOutputStream(baos);
		try {
			dos.writeDouble(Math.random());
			dos.writeBoolean(true);
			ByteArrayInputStream bais = new ByteArrayInputStream(baos.toByteArray());
			DataInputStream dis = new DataInputStream(bais);
			System.out.println(dis.available());	// 输出有多少个字节
			// 先写进去的先读出来，先进先出
			System.out.println(dis.readDouble());	
			System.out.println(dis.readBoolean());
		} catch (IOException e) {
			System.out.println("流转换异常");
		}
	}
	
}
