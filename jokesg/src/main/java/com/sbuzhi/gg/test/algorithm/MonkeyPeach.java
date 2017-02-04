package com.sbuzhi.gg.test.algorithm;

public class MonkeyPeach {
	
	/**
	 * 海滩上有一堆桃子，五只猴子来分。
	 * 第一只猴子把这堆桃子凭据分为五份，多了一个，这只猴子把多的一个扔入海中，拿走了一份。
	 * 第二只猴子把剩下的桃子又平均分成五份，又多了一个，它同样把多的一个扔入海中，拿走了一份，
	 * 第三、第四、第五只猴子都是这样做的，问海滩上原来最少有多少个桃子？ 
	 * @param args
	 */
	public static void main(String[] args) {
		int total = 1;
		for (int j = 0; j < 5; j++) {
			total = 5 * total + 1;
		}
		System.out.println("最少有" + total + "个桃子");
	}

}
