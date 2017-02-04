package com.jokesg.gg.test.io;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/**
 * 输入流示例（字符）
 * @author stealth.Lee
 * @date 2016年12月28日 下午5:22:41
 */
public class FileReaderDemo {

	public static void main(String[] args) {
		FileReader fr = null;
		int b = 0;
		String file = "F:\\lee\\jokesg\\src\\main\\java\\com\\jokesg\\gg\\test\\io\\FileReaderDemo.java";
		try {
			fr = new FileReader(file);
			while((b = fr.read()) != -1){
				System.out.print((char)b);
			}
		} catch (FileNotFoundException e) {
			System.out.println("指定文件找不到！");
			System.exit(-1);
		} catch (IOException e) {
			System.out.println("字符输入流读取异常！");
			System.exit(-1);
		} finally {
			try {
				fr.close();
			} catch (IOException e) {
				System.out.println("关闭异常");
				System.exit(-1);
			}
		}
	}

}