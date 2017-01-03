package com.jokesg.gg.common.utils;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.apache.http.HttpEntity;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * URL工具类
 * @author stealth.Lee
 * @date 2016年12月9日 上午11:51:39
 */
public class UrlUtils {
	
	public static final Logger logger = LoggerFactory.getLogger(UrlUtils.class);

	/**
	 * 构造爱奇异路径
	 * @param url url
	 * @param word 关键字
	 * @param page 当前页
	 * @param rows 行
	 * @return
	 */
	public static String getIqiyApiUrl(String url, String word, int page, int rows){
		StringBuilder sbBuilder = new StringBuilder(url);
		try {
			sbBuilder.append("&keyword=").append(URLEncoder.encode(word,"UTF-8"));
			sbBuilder.append("&page_number=").append(page);
			sbBuilder.append("&page_size=").append(rows);
		} catch (UnsupportedEncodingException e) {
			logger.error("文字编码错误", e);
			return "";
		}
		return sbBuilder.toString();
	}
	
	/**
	 * 构造腾讯视频搜索接口路径
	 * @param url url
	 * @param word 关键字
	 * @param page 当前页码
	 * @param rows 行
	 * @return
	 */
	public static String getTencentUrl(String url, String word, int page, int rows) {
		StringBuilder sbBuilder;
		try {
			sbBuilder = new StringBuilder(url);
			sbBuilder.append("&query=").append(URLEncoder.encode(word,"UTF-8"));
			sbBuilder.append("&cur=").append(page);
			sbBuilder.append("&num=").append(rows);
		} catch (UnsupportedEncodingException e) {
			logger.error("文字编码错误", e);
			return "";
		}
		return sbBuilder.toString();
	}
	
	/**
	 * 获取HttpEntity
	 * @param url
	 * @return
	 */
	public static String getHttpEntity(String url) {
		HttpGet httpget = null;
		CloseableHttpResponse response = null;
		CloseableHttpClient httpClient = null;
		HttpEntity entity = null;
		try {
			httpClient = HttpClients.createDefault();
			// 设置数据读取超时时间和链接超时时间,该时间设置不合理会导致链接数累增，造成性能瓶颈
			RequestConfig requestConfig = RequestConfig.custom()
					.setSocketTimeout(1 * 1000).setConnectTimeout(1 * 1000)
					.build();
			httpget = new HttpGet(url);
			httpget.setConfig(requestConfig);
			response = httpClient.execute(httpget);
			entity = response.getEntity();
			// 如果返回码为200且content不为空
			if (entity != null && response.getStatusLine().getStatusCode() == 200) {
				return subStr(EntityUtils.toString(entity));
			}
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				httpClient.close();
				response.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
	    }
		return "";
	}
	
	/**
	 * 处理腾讯视频接口返回json时多了一对{}
	 * @param str
	 * @return
	 */
	private static String subStr(String str){
		int index1 = str.indexOf("{");
		int index2 = str.lastIndexOf("}") + 1;
		return str.substring(index1, index2);
	}
}
