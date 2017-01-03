package com.jokesg.gg.common.exception;

import org.apache.shiro.authc.AuthenticationException;

/**
 * 验证码异常类
 * @author skies Lee
 * @date 2016年10月11日 上午10:43:46
 */
public class CaptchaException extends AuthenticationException {

	private static final long serialVersionUID = 1L;

	public CaptchaException() {
		super();
	}

	public CaptchaException(String message, Throwable cause) {
		super(message, cause);
	}

	public CaptchaException(String message) {
		super(message);
	}

	public CaptchaException(Throwable cause) {
		super(cause);
	}

}
