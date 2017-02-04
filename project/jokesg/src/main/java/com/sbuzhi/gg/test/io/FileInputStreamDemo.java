package com.sbuzhi.gg.test.io;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/**
 * 文件输入流示例
 * @author stealth.Lee
 * @date 2016年12月28日 下午4:44:11
 */
public class FileInputStreamDemo {
	
	public static void main(String[] args) {
		String fileName = "F:\\lee\\jokesg\\src\\main\\java\\com\\jokesg\\gg\\test\\io\\FileInputStreamDemo.java";
		FileInputStream in = null;
		int b = 0;
		try {
			int num = 0;
			in = new FileInputStream(fileName);
			while((b = in.read()) != -1){
				System.out.print((char)b);
				num++;
			}
			System.out.println("总共输出了" + num + "个字节");
		} catch (FileNotFoundException e) {
			System.out.println("找不到指定文件");
			System.exit(-1);
		} catch (IOException e) {
			System.out.println("文件读取发生异常!");
			System.exit(-1);
		} finally {
			try {
				in.close();
			} catch (IOException e) {
				System.out.println("流关闭异常");
			}
		}
	}
	
}
