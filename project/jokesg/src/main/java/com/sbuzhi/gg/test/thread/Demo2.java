package com.sbuzhi.gg.test.thread;

import java.util.Date;

/**
 * 线程
 * @author stealth.Lee
 * @date 2016年12月22日 上午11:58:44
 */
public class Demo2 {
	public static void main(String[] args) {
		Thread1 t = new Thread1();
		t.start();
		
		try {
			Thread.sleep(10000);
		} catch (InterruptedException e) {
		}
		t.interrupt();
	}              
	
}

class Thread1 extends Thread{

	@Override
	public void run() {
		while (true) {
			System.out.println("Time:" + new Date());
			try {
				sleep(1000);
			} catch (InterruptedException e) {
				return;
			}
		}
	}
	
}