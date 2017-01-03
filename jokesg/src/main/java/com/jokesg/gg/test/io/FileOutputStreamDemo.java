package com.jokesg.gg.test.io;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * 文件输出流示例
 * @author stealth.Lee
 * @date 2016年12月28日 下午4:57:43
 */
public class FileOutputStreamDemo {

	public static void main(String[] args) {
		FileInputStream in = null;
		FileOutputStream out = null;
		int b = 0;
		String fileName = "F:\\lee\\jokesg\\src\\main\\java\\com\\jokesg\\gg\\test\\io\\FileInputStreamDemo.java";
		try {
			in = new FileInputStream(fileName);
			out = new FileOutputStream("F:\\a\\Demo.java");
			while ((b = in.read()) != -1) {
				out.write(b);
				System.out.print((char)b);
			}
		} catch (FileNotFoundException e) {
			System.out.println("找不到指定文件");
			System.exit(-1);
		} catch (IOException e) {
			System.out.println("文件复制异常");
			System.exit(-1);
		} finally {
			try {
				in.close();
				out.flush();
				out.close();
			} catch (IOException e) {
				System.out.println("流关闭异常");
			}
		}
		System.out.println("文件复制成功");
	}

}
