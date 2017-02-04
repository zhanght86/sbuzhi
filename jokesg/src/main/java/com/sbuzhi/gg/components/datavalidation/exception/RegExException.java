package com.sbuzhi.gg.components.datavalidation.exception;

/**
 * 自定义数据校验异常：正则表达式异常
 * @author stealth.Lee
 * @date 2016年10月19日 下午10:27:46
 */
public class RegExException extends ValidationException {

	private static final long serialVersionUID = 1L;

	public RegExException() {
		super();
	}

	public RegExException(String message, Throwable cause,
			boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public RegExException(String message, Throwable cause) {
		super(message, cause);
	}

	public RegExException(String message) {
		super(message);
	}

	public RegExException(Throwable cause) {
		super(cause);
	}
	
}
