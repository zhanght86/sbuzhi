package com.sbuzhi.gg.test.io;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintStream;

/**
 * print流
 * @author stealth.Lee
 * @date 2016年12月29日 上午11:32:00
 */
public class PrintStreamDemo1 {

	public static void main(String[] args) {
		PrintStream ps = null;
		try {
			FileOutputStream pos = new FileOutputStream("F:\\a\\Demo5.txt");
			ps = new PrintStream(pos);
		} catch (FileNotFoundException e) {
			System.out.println("找不到指定文件");
		}
		if(ps != null){
			System.setOut(ps);
		}
		for (int i = 0; i < 100; i++) {
			System.out.print(i + " ");
		}
	}
	
}
