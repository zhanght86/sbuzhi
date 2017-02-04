package com.sbuzhi.gg.test.io;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/**
 * 
 * @author stealth.Lee
 * @date 2016年12月29日 上午9:16:57
 */
public class BufferInputStreamDemo {
	
	public static void main(String[] args) {
		String file = "F:\\lee\\jokesg\\src\\main\\java\\com\\jokesg\\gg\\test\\io\\BufferInputStreamDemo.java";
		BufferedInputStream bis = null;
		try {
			bis = new BufferedInputStream(new FileInputStream(file));
			int b = 0;
			while ((b = bis.read()) != -1) {
				System.out.print((char)b);
			}
		} catch (FileNotFoundException e) {
			System.out.println("指定文件找不到");
		} catch (IOException e) {
			System.out.println("文件读取失败");
		}
		
	}
	
}
