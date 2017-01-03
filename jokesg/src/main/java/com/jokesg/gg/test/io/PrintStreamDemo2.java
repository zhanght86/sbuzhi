package com.jokesg.gg.test.io;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintStream;


/**
 * print流
 * @author stealth.Lee
 * @date 2016年12月29日 上午11:32:00
 */
public class PrintStreamDemo2 {

	public static void main(String[] args) {
		list("F:\\a\\Demo5.txt",System.out);
	}
	
	private static void list(String fileName,PrintStream out){
		BufferedReader br = null;
		String str = "";
		try {
			br = new BufferedReader(new FileReader(fileName));
			while ((str = br.readLine()) != null) {
				out.print(str);
			}
		} catch (FileNotFoundException e) {
			System.out.println("指定文件找不到");
		} catch (IOException e) {
			System.out.println("流异常");
		}
	}
	
}
