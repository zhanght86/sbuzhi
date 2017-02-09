package com.sbuzhi.common.utils;

import java.util.UUID;

public class IdGen {
	
	/**
     * 生成UUID
     * @return
     */
    public static String uuid(){
        return UUID.randomUUID().toString().replaceAll("-","");
    }
    
    
}
