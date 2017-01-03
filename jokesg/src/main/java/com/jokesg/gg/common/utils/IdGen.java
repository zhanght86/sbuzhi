package com.jokesg.gg.common.utils;

import java.util.Random;
import java.util.UUID;

import com.jokesg.gg.common.enumeration.TimeId;

/**
 * 生成唯一ID工具类
 * Created by Stealth.Lee on 2016/9/11.
 */
public class IdGen {
	
	private static char[] cr1 = new char[] {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
	private static char[] cr2 = new char[] {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
	
    /**
     * 生成UUID
     * @return
     */
    public static String uuid(){
        return UUID.randomUUID().toString().replaceAll("-","");
    }

    /**
     * 时间戳ID
     * @param timeId
     * @return
     */
    public static String timeId(TimeId timeId){
    	String result = "";
    	Random rd = new Random();
    	if(timeId == TimeId.LOWERCASE){
    		for (int i = 0; i < 6; i++) {
    			result += cr1[rd.nextInt(25)];
    		}
		} else if(timeId == TimeId.UPPERCASE) {
			for (int i = 0; i < 6; i++) {
				result += cr2[rd.nextInt(25)];
    		}
		} else if(timeId == TimeId.BLENDCASE) {
			for (int i = 0; i < 6; i++) {
				if(rd.nextInt(10) % 2 == 0){
					result += cr2[rd.nextInt(25)];
				} else {
					result += cr1[rd.nextInt(25)];
				}
    		}
		}
    	result += System.currentTimeMillis();
    	return result;
    }
    
    public static void main(String[] args) {
        System.out.println(timeId(TimeId.UPPERCASE));
    }
    
}
