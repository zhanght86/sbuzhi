package com.sbuzhi.gg.test.socket;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;

import org.junit.Test;

/**
 *  
 * @author stealth.Lee
 * @date 2016年12月29日 下午4:43:25
 */
public class SocketDemo2 {

	@Test
	public void client(){
		Socket socket = null;
		OutputStream out = null;
		FileInputStream fis = null;
		InputStream in = null;
		int b = 0;
		try {
			socket = new Socket(InetAddress.getLocalHost(), 8099);
			out = socket.getOutputStream();
			fis = new FileInputStream(new File("F:\\a\\log.txt"));
			while ((b = fis.read()) != -1) {
				out.write(b);
			}
			socket.shutdownOutput();
			in = socket.getInputStream();
			while ((b = in.read()) != -1) {
				System.out.print((char)b);
			}
		} catch (IOException e) {
			
		} finally {
			try {
				if(out != null) out.close();
				if(fis != null) fis.close();
				if(socket != null) socket.close();
				if(in != null) in.close();
			} catch (IOException e) {
				
			}
		}
	}
	
	@Test
	public void server(){
		ServerSocket serverSocket = null;
		Socket socket = null;
		InputStream in = null;
		FileOutputStream fos = null;
		OutputStream out = null;
		int b = 0;
		try {
			serverSocket = new ServerSocket(8099);
			socket = serverSocket.accept();
			in = socket.getInputStream();
			fos = new FileOutputStream("F:\\a\\aa.txt");
			while ((b = in.read()) != -1) {
				fos.write(b);
			}
			out = socket.getOutputStream();
			out.write("Yes".getBytes());
		} catch (IOException e) {
			
		} finally {
			try {
				if(out != null)out.close();
				if(fos != null)fos.close();
				if(in != null)in.close();
				if(socket != null)socket.close();
				if(serverSocket != null)serverSocket.close();
			} catch (IOException e) {
				
			}
		}
	}
	
}
