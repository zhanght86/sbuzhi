package com.sbuzhi.gg.test.io;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
/**
 * BufferedReader（字符）
 * @author stealth.Lee
 * @date 2016年12月29日 上午9:39:29
 */
public class BufferedReaderDemo {
	
	public static void main(String[] args) {
		String file = "F:\\lee\\jokesg\\src\\main\\java\\com\\jokesg\\gg\\test\\io\\BufferedWriterDemo.java";
		BufferedReader br = null;
		int b = 0;
		try {
			br = new BufferedReader(new FileReader(file));
			while ((b = br.read()) != -1) {
				System.out.print((char)b);
			}
		} catch (IOException e) {
			System.out.println("找不到指定文件");
		}
	}
	
}
