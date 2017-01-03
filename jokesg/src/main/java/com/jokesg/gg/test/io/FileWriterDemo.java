package com.jokesg.gg.test.io;

import java.io.FileWriter;
import java.io.IOException;

/**
 * 输出流示例（字符）
 * @author stealth.Lee
 * @date 2016年12月28日 下午5:28:09
 */
public class FileWriterDemo {

	public static void main(String[] args) {
		FileWriter fw = null;
		String file = "F:\\a\\unicode.dat";
		try {
			fw = new FileWriter(file);
			for (int i = 0; i < 50000; i++) {
				fw.write(i);
			}
			fw.flush();
			fw.close();
		} catch (IOException e) {
			System.out.println("指定文件找不到！");
			System.exit(-1);
		}
		System.out.println("文件写出成功");
	}

}