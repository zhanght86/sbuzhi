package com.jokesg.gg.common.utils;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.util.HashMap;

import javax.imageio.ImageIO;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.HybridBinarizer;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

/**
 * 二维码工具类
 * @author stealth.Lee
 * @date 2016年12月8日 下午5:48:46
 */
public class QRCodeUtils {
	
	public static void createQRCode(){
		int width = Const.WIDTH;
		int height = Const.HEIGHT;
		String format = Const.PNG;
		String content = "二维码生成！";
		HashMap<EncodeHintType, Object> hints = new HashMap<EncodeHintType, Object>();
		hints.put(EncodeHintType.CHARACTER_SET, Const.ENCODING);
		hints.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.M);
		hints.put(EncodeHintType.MARGIN, 2);
		try {
			BitMatrix bitMatrix = new MultiFormatWriter().encode(content, BarcodeFormat.QR_CODE, width, height,hints);
			Path file = new File("F:/code/img.png").toPath();
			MatrixToImageWriter.writeToPath(bitMatrix, format, file);
		} catch (WriterException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static void readQRCode(){
		try {
			MultiFormatReader formatReader = new MultiFormatReader();
			File file = new File("F:/code/img.png");
			BufferedImage image = ImageIO.read(file);
			BinaryBitmap binaryBitmap = new BinaryBitmap(new HybridBinarizer(new BufferedImageLuminanceSource(image)));
			HashMap<EncodeHintType, String> hints = new HashMap<EncodeHintType, String>();
			hints.put(EncodeHintType.CHARACTER_SET, Const.ENCODING);
			Result result = formatReader.decode(binaryBitmap);
			System.out.println(result.toString());
			System.out.println(result.getText());
			System.out.println(result.getBarcodeFormat());

		} catch (IOException e) {
			e.printStackTrace();
		} catch (NotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		readQRCode();
	}
	
}
