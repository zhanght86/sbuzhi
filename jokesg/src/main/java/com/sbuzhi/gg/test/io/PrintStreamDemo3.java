package com.sbuzhi.gg.test.io;

import java.io.BufferedReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.Date;

/**
 * print流
 * @author stealth.Lee
 * @date 2016年12月29日 上午11:32:00
 */
public class PrintStreamDemo3 {

	public static void main(String[] args) {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String str = "";
		try {
			FileWriter fw = new FileWriter("F:\\a\\log.txt",true);
			PrintWriter pw = new PrintWriter(fw);
			while ((str = br.readLine()) != null) {
				if(str.equalsIgnoreCase("0")) break;
				pw.println(str);
			}
			pw.println("----" + new Date() + "----");
			pw.flush();
			pw.close();
		} catch (IOException e) {
			System.out.println("流异常");
		}
		System.out.println("任务结束");
	}
	
}
