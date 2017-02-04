package com.sbuzhi.gg.test.io;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

/**
 * Objext流
 * @author stealth.Lee
 * @date 2016年12月29日 下午2:14:01
 */
public class ObjextStreamDemo {
	
	public static void main(String[] args) {
		T t = new T();
		t.a = 10;
		ObjectOutputStream oos = null;
		ObjectInputStream ois = null;
		try {
			oos = new ObjectOutputStream(new FileOutputStream("F:\\a\\Demo6.txt"));
			oos.writeObject(t);
			oos.flush();
			oos.close();
			ois = new ObjectInputStream(new FileInputStream("F:\\a\\Demo6.txt"));
			T t1 = (T) ois.readObject();
			System.out.println(t1.a + " " + t1.b + " " + t1.str + " " + t1.f);
		} catch (IOException e) {
			System.out.println("流异常");
		} catch (ClassNotFoundException e) {
			System.out.println("类找不到");
		}
		
	}
	
}

class T implements Serializable{
	private static final long serialVersionUID = 1L;
	// 透明的
	transient int a = 5;
	double b = 3.0;
	String str = "hello";
	boolean f = false;
}