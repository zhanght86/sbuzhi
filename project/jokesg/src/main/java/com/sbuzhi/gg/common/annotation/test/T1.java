package com.sbuzhi.gg.common.annotation.test;

import com.sbuzhi.gg.components.datavalidation.annotation.NotNull;


public class T1 {

	@NotNull
	String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
