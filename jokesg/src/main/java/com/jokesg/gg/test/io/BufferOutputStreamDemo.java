package com.jokesg.gg.test.io;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * 
 * @author stealth.Lee
 * @date 2016年12月29日 上午9:16:57
 */
public class BufferOutputStreamDemo {
	
	public static void main(String[] args) {
		String file = "F:\\lee\\jokesg\\src\\main\\java\\com\\jokesg\\gg\\test\\io\\BufferInputStreamDemo.java";
		BufferedInputStream bis = null;
		BufferedOutputStream bos = null;
		int b = 0;
		try {
			bis = new BufferedInputStream(new FileInputStream(file));
			bos = new BufferedOutputStream(new FileOutputStream("F:\\a\\Demo2.java"));
			while ((b = bis.read()) != -1) {
				bos.write(b);
			}
			bis.close();
			bos.close();
		} catch (FileNotFoundException e) {
			System.out.println("指定文件找不到");
		} catch (IOException e) {
			System.out.println("文件读取失败");
		}
		System.out.println("文件复制成功");
	}
	
}
