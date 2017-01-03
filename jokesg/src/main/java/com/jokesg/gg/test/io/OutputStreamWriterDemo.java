package com.jokesg.gg.test.io;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;

/**
 * 将字节流转换为字符流
 * @author stealth.Lee
 * @date 2016年12月29日 上午10:13:19
 */
public class OutputStreamWriterDemo {

	public static void main(String[] args) {
		OutputStreamWriter osw = null;
		try {
			osw = new OutputStreamWriter(new FileOutputStream("F:\\a\\Demo4.txt"));
			osw.write("你好，这是我的一个示例代码。");
			System.out.println(osw.getEncoding());
			osw.close();
			osw = new OutputStreamWriter(new FileOutputStream("F:\\a\\Demo4.txt", true), "ISO8859-1");
			osw.write("我要在内容后面加一点字！");
			System.out.println(osw.getEncoding());
			osw.close();
		} catch (UnsupportedEncodingException e) {
			System.out.println("编码转换异常");
		} catch (FileNotFoundException e) {
			System.out.println("找不到指定文件");
		} catch (IOException e) {
			System.out.println("文件写入失败");
		}
	}

}
