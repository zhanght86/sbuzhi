package com.sbuzhi.gg.components.datavalidation.exception;

/**
 * 自定义数据校验异常：校验数据为空异常
 * @author stealth.Lee
 * @date 2016年10月18日 下午4:27:20
 */
public class NotNullException extends ValidationException {

	private static final long serialVersionUID = 1L;

	public NotNullException() {
		super();
	}

	public NotNullException(String message, Throwable cause,
			boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public NotNullException(String message, Throwable cause) {
		super(message, cause);
	}

	public NotNullException(String message) {
		super(message);
	}

	public NotNullException(Throwable cause) {
		super(cause);
	}
	
	

}
