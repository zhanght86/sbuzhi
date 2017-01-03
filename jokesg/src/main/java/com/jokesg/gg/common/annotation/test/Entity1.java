package com.jokesg.gg.common.annotation.test;

import com.jokesg.gg.components.datavalidation.annotation.NotNull;
import com.jokesg.gg.components.datavalidation.annotation.Valid;

@Valid
public class Entity1 extends T1{

	@NotNull
	private String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
}
