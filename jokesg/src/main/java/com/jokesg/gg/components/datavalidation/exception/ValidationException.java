package com.jokesg.gg.components.datavalidation.exception;

import com.jokesg.gg.common.exception.BaseException;

/**
 * 数据校验异常父类
 * @author stealth.Lee
 * @date 2016年10月19日 上午10:25:10
 */
public class ValidationException extends BaseException {

	private static final long serialVersionUID = 1L;

	public ValidationException() {
		super();
	}

	public ValidationException(String message, Throwable cause,
			boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public ValidationException(String message, Throwable cause) {
		super(message, cause);
	}

	public ValidationException(String message) {
		super(message);
	}

	public ValidationException(Throwable cause) {
		super(cause);
	}
	
	

}
