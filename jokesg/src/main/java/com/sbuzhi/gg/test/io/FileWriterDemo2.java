package com.sbuzhi.gg.test.io;

import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/**
 * 文件写入写出示例（字符）
 * @author stealth.Lee
 * @date 2016年12月28日 下午5:36:04
 */
public class FileWriterDemo2 {
	
	public static void main(String[] args) {
		FileReader reader = null;
		FileWriter writer = null;
		int b = 0;
		try {
			reader = new FileReader("F:\\lee\\jokesg\\src\\main\\java\\com\\jokesg\\gg\\test\\io\\FileReaderDemo.java");
			writer = new FileWriter("F:\\a\\Demo1.java");
			while ((b = reader.read()) != -1) {
				writer.write(b);
			}
			reader.close();
			writer.flush();
			writer.close();
		}catch (IOException e) {
			System.out.println("文件复制出错");
		}
		System.out.println("文件复制成功");
	}
	
}