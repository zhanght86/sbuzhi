package com.sbuzhi.gg.test.io;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/**
 * BufferedWriter（字符）
 * @author stealth.Lee
 * @date 2016年12月29日 上午9:41:12
 */
public class BufferedWriterDemo {
	
	public static void main(String[] args) {
		BufferedWriter bw = null;
		BufferedReader br = null;
		String str = "";
		String file = "F:\\lee\\jokesg\\src\\main\\java\\com\\jokesg\\gg\\test\\io\\BufferedWriterDemo.java";
		try {
			br = new BufferedReader(new FileReader(file));
			bw = new BufferedWriter(new FileWriter("F:\\a\\Demo3.java"));
			while ((str = br.readLine()) != null) {
				bw.write(str);
				bw.newLine(); // 换行
			}
			bw.flush();
			bw.close();
			br.close();
		} catch (FileNotFoundException e) {
			System.out.println("指定文件找不到");
		} catch (IOException e) {
			System.out.println("文件复制异常");
		}
		System.out.println("文件复制成功");
	}
	
}
