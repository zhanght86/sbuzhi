package com.sbuzhi.gg.common.utils;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.aliyuncs.sms.model.v20160927.SingleSendSmsRequest;

/**
 * 阿里云短信服务工具类
 * @author stealth.Lee
 * @date 2016年12月21日 上午9:33:46
 */
public class SMSUtils {
	
	public static final String SMS_ENDPOINT = "cn-hangzhou";

	public static void sample() {        
        try {
        	IClientProfile profile = DefaultProfile.getProfile(SMS_ENDPOINT, Const.OSS_ACCESSKEYID,
    				Const.OSS_ACCESSKEYSECRET);
            DefaultProfile.addEndpoint(SMS_ENDPOINT, SMS_ENDPOINT, "Sms",  "sms.aliyuncs.com");
            IAcsClient client = new DefaultAcsClient(profile);
            SingleSendSmsRequest request = new SingleSendSmsRequest();
            request.setSignName("控制台创建的签名名称");
            request.setTemplateCode("控制台创建的模板CODE");
            request.setParamString("{}");
            request.setRecNum("15230297756");
            client.getAcsResponse(request);
        } catch (ServerException e) {
            e.printStackTrace();
        } catch (ClientException e) {
            e.printStackTrace();
        }
    }
	
	public static void main(String[] args) {
		sample();
	}
	
}
