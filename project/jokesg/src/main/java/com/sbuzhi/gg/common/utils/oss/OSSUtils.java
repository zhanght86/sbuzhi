package com.sbuzhi.gg.common.utils.oss;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.aliyun.oss.OSSClient;
import com.aliyun.oss.model.BucketInfo;
import com.aliyun.oss.model.OSSObject;
import com.aliyun.oss.model.ObjectMetadata;
import com.sbuzhi.gg.common.enumeration.OSSKey;
import com.sbuzhi.gg.common.utils.Const;
import com.sbuzhi.gg.common.utils.ObjectUtil;


/**
 * 阿里云OSS云存储服务
 * @author stealth.Lee
 * @date 2016年11月3日 上午9:00:17
 */
public class OSSUtils {
	
	private static Logger logger = LoggerFactory.getLogger(OSSUtils.class);

	/**
	 * 阿里云OSS外网域名
	 */
	public static final String OSS_ENDPOINT = "oss-cn-beijing.aliyuncs.com";
	
	/**
	 * 阿里云OSS内网域名
	 */
	public static final String OSS_ENDPOINT2 = "oss-cn-beijing-internal.aliyuncs.com";

	/**
	 * 阿里云OSS默认Bucket名称
	 */
	public static final String OSS_BUCKET = "jokesg";
	
	/**
	 * 获取OSSClient
	 * @return
	 */
	public static OSSClient getOSSClient() {
		OSSClient client = new OSSClient(OSS_ENDPOINT, Const.OSS_ACCESSKEYID,
				Const.OSS_ACCESSKEYSECRET);
		if (!client.doesBucketExist(OSS_BUCKET)) {
			client.createBucket(OSS_BUCKET);
			logger.info("[OSSUtils] Bucket创建成功:{}",OSS_BUCKET);
		} else {
			logger.info("[OSSUtils] Bucket已经存在,无须重新创建:{}",OSS_BUCKET);
		}
		return client;
	}
	
	/**
	 * 获取Bucket基本信息
	 * @return
	 */
	public static BucketInfo getBucketInfo(){
		BucketInfo info = getOSSClient().getBucketInfo(OSS_BUCKET);
		logger.info("[OSSUtils] Bucket:{}信息如下",OSS_BUCKET);
		logger.info("[OSSUtils] 数据中心:{}",info.getBucket().getLocation());
		logger.info("[OSSUtils] 创建时间:{}",info.getBucket().getCreationDate());
		logger.info("[OSSUtils] 用户标志:{}",info.getBucket().getOwner());
		return info;
	}
	
	/**
	 * 上传文件到OSS
	 * @param ossKey
	 * @param id 
	 * @param filePath 文件路径
	 */
	public static void uploadFile(String ossKey, String filePath){
		OSSClient ossClient = null;
		try {
			ossClient = getOSSClient();
			ossClient.putObject(OSS_BUCKET, ossKey, new File(filePath));
			logger.info("[OSSUtils] 上传到OSS成功：{}" ,ossKey);
		} catch (Exception e) {
			logger.error("[OSSUtils] 上传失败!");
			e.printStackTrace();
		} finally {
			ossClient.shutdown();
        }
	}
	
	
	/**
	 * byte数组上传
	 * @param ossKey
	 * @param id
	 * @param bytes
	 */
	public static void uploadFile(String ossKey,byte [] bytes){
		OSSClient ossClient = null;
		try {
			ossClient = getOSSClient();
			InputStream is = new ByteArrayInputStream(bytes);
			ObjectMetadata om = new ObjectMetadata(); 
			om.setContentLength(bytes.length); 
			ossClient.putObject(OSS_BUCKET, ossKey, is,om);
			logger.info("[OSSUtils] 上传到OSS成功：{}" ,ossKey);
		} catch (Exception e) {
			logger.error("[OSSUtils] 上传到OSS失败!");
			e.printStackTrace();
		} finally {
			ossClient.shutdown();
        }
	}
	
	/**
	 * 从OSS中下载文件
	 * @param ossKey
	 * @return
	 * @throws IOException 
	 */
	public static byte[] downloadFile(String ossKey){
		OSSClient ossClient = getOSSClient();
	   	ByteArrayOutputStream baos = null;
		try {
			OSSObject ossObject = ossClient.getObject(OSS_BUCKET, ossKey);
			InputStream is = ossObject.getObjectContent();
			baos = new ByteArrayOutputStream((int) ossObject.getObjectMetadata().getContentLength());
			byte[] buf = new byte[Const.BYTE_SIZE];
			int len = 0;
			while (-1 != (len = is.read(buf, 0, buf.length))) {
				baos.write(buf, 0, len);
			}
			ossClient.shutdown();
			baos.close();
		} catch (Exception e) {
			
		}
		return baos.toByteArray();
	}
	
	/**
	 * 从OSS中删除文件
	 * @param key 
	 */
	public static void delFile(String key) {
		OSSClient ossClient = null;
		try {
			ossClient = getOSSClient();
			ossClient.deleteObject(OSS_BUCKET, key);
			logger.info("[OSSUtils] 删除成功:{}" , key);
		} catch (Exception e) {
			logger.info("[OSSUtils] 删除失败:{}" , key);
			e.printStackTrace();
		} finally {
			ossClient.shutdown();
        }
	}

	/**
	 * key命名规则
	 * @param ossKey 上传文件的类型
	 * @param id 主键ID
	 */
	public static String createKey(OSSKey type,String id){
		if(!ObjectUtil.isNotAllBlank(type,id)){
			logger.debug("[OSSUtils] 命名失败,有空值：ID = {} , OssKey = {}", id,type);
			throw new NullPointerException("命名失败，ID或OssKey有空值");
		}
		StringBuilder builder = new StringBuilder(Const.OSS_PREFIX);
		builder.append(type).append("_").append(id);
		logger.info("[OSSUtils] 命名成功：{}",builder.toString());
		return builder.toString();
	}
	
	public static void main(String[] args) throws IOException {
//		String a = "hello";
//		String file = "F:\\lee\\jokesg\\src\\main\\java\\com\\jokesg\\gg\\utils\\oss\\404.jpg";
//		String ossKey = createKey(OSSKey.PHOTO,"adfa54");
//		uploadFile(ossKey,file);
		downloadFile("my-first-key");
//		delFile("0.png");
	}
	
}
