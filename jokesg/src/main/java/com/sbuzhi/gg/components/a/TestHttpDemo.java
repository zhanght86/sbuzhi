package com.sbuzhi.gg.components.a;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.Scanner;

import org.apache.http.HttpEntity;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;

public class TestHttpDemo {
	
	public static void downloadPagebyGetMethod() throws IOException{
		// 1.通过get方式获取Response对象
		CloseableHttpClient httpClient = null;
		HttpGet httpGet = null;
		CloseableHttpResponse response = null;
		InputStream is = null;
		Scanner sc = null;
		Writer os = null;
		try {
			httpClient = HttpClients.createDefault();
			httpGet = new HttpGet("https://pan.baidu.com/disk/home?errno=0&errmsg=Auth%20Login%20Sucess&stoken=4368ea51c07213e75c8ce23abe5cd0c4014d955f167a0b1d71743304cf70ecb45805da0f9bd58455df5dd366f08f18880e4c8085698e0eaddddaa8456d06787beb36730925da&bduss=693433115376c245a2c33c54b40f88afe966aa6ca31fd0b973d25a73e3c25bb960d7978f9b6a0c662e57d0645eef8e27ad7d595843993d259ac966a6fb7c4d74c341036e97467e636599e962064eb1bd4cc436885bb99dbf64e7ec44fd69105f2a99b83a4047a2156e2e9ab3f229d65d3b93898c8604a7a118296f615171bf8a57eca49948ae150eceff66a908a68f9a063b7f4be689810a4e8d924b2528046eef8d908c64c15b5c65583d6310788519cd107eb479c9e493c3b60d3276dd839bfffa567ddfe6&ssnerror=0#list/path=%2F&vmode=list");
			response = httpClient.execute(httpGet);
			//	2.通过response获取HttpEntity
			HttpEntity entity = response.getEntity();
			is = entity.getContent();
			sc = new Scanner(is);
			String path = "F:\\lee\\jokesg\\src\\main\\java\\com\\jokesg\\gg\\components\\a\\2.html";
			os = new PrintWriter(path);
			while (sc.hasNext()) {
				os.write(sc.nextLine());
			}
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (sc != null) {
				sc.close();
			}
			if (is != null) {
				is.close();
			}
			if (os != null) {
				os.close();
			}
			if (response != null) {
				response.close();
			}
		}
	}
	
	public static void main(String[] args) {
		try {
			downloadPagebyGetMethod();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
}
