package com.sbuzhi.components.valid;
import javax.annotation.Resource;

import com.sbuzhi.components.valid.annotation.Max;
import com.sbuzhi.components.valid.annotation.Valid;

@Valid
public class TestDemo1 {
	
	@Max
	@Resource
	int a = 0;
	
	
	String str = "a" ;
	
	
	public TestDemo1() {
		super();
//		String s = "adsad";
	}



	public void fun1( String f){
		
//		int b = 0;
		
	}
	
}
