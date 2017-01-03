package com.jokesg.gg.test.io;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * 将字节流转换为字符流
 * @author stealth.Lee
 * @date 2016年12月29日 上午10:24:14
 */
public class InputStreamReaderDemo {

	public static void main(String[] args) {
		InputStreamReader isr = new InputStreamReader(System.in);
		BufferedReader br = new BufferedReader(isr);
		String str = "";
		try {
			while((str = br.readLine()) != null){
				if(str.equalsIgnoreCase("exit")) break;
				System.out.println(str.toUpperCase());
				str = br.readLine();
			}
		} catch (IOException e) {
			System.out.println("文件读取异常");
		}
	}
	
}
