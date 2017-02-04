package com.sbuzhi.gg.components.datavalidation.exception;

/**
 * 自定义数据校验异常：检验数据不在length()范围内异常
 * @author stealth.Lee
 * @date 2016年10月18日 下午4:27:46
 */
public class LengthException extends ValidationException {

	private static final long serialVersionUID = 1L;

	public LengthException() {
		super();
	}

	public LengthException(String message, Throwable cause,
			boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public LengthException(String message, Throwable cause) {
		super(message, cause);
	}

	public LengthException(String message) {
		super(message);
	}

	public LengthException(Throwable cause) {
		super(cause);
	}
	
	

}
