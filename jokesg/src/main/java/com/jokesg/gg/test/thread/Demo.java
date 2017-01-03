package com.jokesg.gg.test.thread;
/**
 * 线程示例
 * @author stealth.Lee
 * @date 2016年12月22日 上午11:32:25
 */
public class Demo {
	
	public static void main(String[] args) {
		Runnable1 r = new Runnable1();
		Thread thread = new Thread(r);
		thread.start();
		
		for (int i = 0; i < 100; i++) {
			System.out.println("Main线程：" + i);
		}
		
	}
	
}

/**
 * 开启一个线程 1：Thread.start();
 * @author stealth.Lee
 * @date 2016年12月22日 上午11:34:04
 */
class Runnable1 implements Runnable{

	@Override
	public void run() {
		for (int i = 0; i < 100; i++) {
			System.out.println("新线程：" + i);
		}
	}
	
}