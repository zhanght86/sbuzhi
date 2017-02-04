package com.sbuzhi.gg.test.algorithm;

import java.util.Scanner;

import org.junit.Test;

/**
 * 算法
 * @author stealth.Lee
 * @date 2017年1月18日 下午4:43:48
 */
public class Algorithm {
	
	/**
	 * 有1、2、3、4个数字，能组成多少个互不相同且无重复数字的三位数？都是多少？
	 */
	@Test
	public void fun1(){
		int count = 0;
		for (int i = 1; i < 5; i++) {
			for (int j = 1; j < 5; j++) {
				for (int k = 1; k < 5; k++) {
					if(i != j && i != k && j != k){
						System.out.println(i + "" + j + "" + k);
						count ++;
					}
				}
			}
		}
		System.out.println(count);
	}
	
	/**
	 * 企业发放的奖金根据利润提成。
	 * 利润(I)低于或等于10万元时，奖金可提10%；
	 * 利润高于10万元，低于20万元时，低于10万元的部分按10%提成，高于10万元的部分，可可提成7.5%；
	 * 20万到40万之间时，高于20万元的部分，可提成5%；
	 * 40万到60万之间时高于40万元的部分，可提成3%；
	 * 60万到100万之间时，高于60万元的部分，可提成1.5%，
	 * 高于100万元时，超过100万元的部分按1%提成，从键盘输入当月利润I，求应发放奖金总数？
	 */
	@Test
	public void fun2(){
		@SuppressWarnings("resource")
		Scanner scanner = new Scanner(System.in);
		double i = scanner.nextDouble();
		if(i <= 100000 && i > 0){
			System.out.println(i * 0.1);
		} else if(i <= 200000 && i > 100000) {
			System.out.println(100000 * 0.1 + (i - 100000) * 0.075);
		} else if(i <= 400000 && i > 200000) {
			System.out.println(100000 * 0.1 + 100000 * 0.075 + (i - 200000) * 0.05);
		} else {
			System.out.println("以下同理");
		}
	}
	
	/**
	 * 一个正整数，它加上100后是一个完全平方数，再加上168又是一个完全平方数，请问该数是多少？
	 */
	@Test
	public void fun3(){
		for (int i = 0; i < 1000; i++) {
			double x = Math.sqrt((i + 100));
			double y = Math.sqrt((i + 268));
			if(x * x == i + 100 && y * y == i + 268){
				System.out.println(i);
			}
		}
	}
	
}
