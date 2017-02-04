package com.sbuzhi.gg.common.utils;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.sbuzhi.gg.mvc.sys.entity.Code;


/**
 * 邮件发送工具类
 * @author Stealth.Lee
 * @date 2016年10月21日 下午9:13:17
 */
public class EmailUtils {
	
	private static Logger logger = LoggerFactory.getLogger(EmailUtils.class);
	
	/**
	 * 发件人邮箱账号
	 */
	public static final String EMAIL_USERNAME = "stealth@jokesg.com";
	
	/**
	 * 发件人邮箱密码
	 */
	public static final String EMAIL_PASSWORD = "123456";

	/**
	 * 发送邮件
	 * @param recipient 收件人
	 * @param code 状态码
	 */
	public static void sendEmail(Code code,String address) {
		Properties props = new Properties();
		props.setProperty("mail.host", Const.HOST);
		// 1.获取链接对象
		Session session = Session.getInstance(props, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(EMAIL_USERNAME, EMAIL_PASSWORD);
			}
		});
//		2.创建邮件对象
		Message message = new MimeMessage(session);
		try {
			// 设置发件人
			message.setFrom(new InternetAddress(EMAIL_USERNAME));
			// 设置收件人
			message.addRecipient(RecipientType.TO, new InternetAddress(address));
			// 抄送 CC   密送 BCC
			// 设置标题
			message.setSubject("来自Jokesg`荤段子`官方网的升级VIP邮件!");
			message.setContent("<h1>来自Jokesg`荤段子`官方网的升级VIP邮件,点击下面链接完成升级操作!</h1><h3><a href='http://localhost:8080/jokesg/user/activeUser.do?oldCode="+code.getCode()+"'>http://www.jokesg.com/user/activeUser.html</a></h3>", Const.FORMAT_HTML);
			// 3.发送邮件
			Transport.send(message);
		} catch (AddressException e) {
			logger.error("[ERROR:sendEmail] AddressException", e);
			e.printStackTrace();
		} catch (MessagingException e) {
			logger.error("[ERROR:sendEmail] MessagingException", e);
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		Code code = new Code("738e925711e44d9bac7846cbea93df45","1");
		sendEmail(code,"314975605@qq.com");
	}
	
}
