package com.jokesg.gg.common.exception;


/**
 * 自定义所有异常父类
 * @author Stealth.Lee
 * @date 2016年10月28日 下午9:46:25
 */
public class BaseException extends Exception {

	private static final long serialVersionUID = 1L;

	public BaseException() {
		super();
	}

	public BaseException(String arg0, Throwable arg1, boolean arg2, boolean arg3) {
		super(arg0, arg1, arg2, arg3);
	}

	public BaseException(String message, Throwable cause) {
		super(message, cause);
	}

	public BaseException(String message) {
		super(message);
	}

	public BaseException(Throwable cause) {
		super(cause);
	}

}
