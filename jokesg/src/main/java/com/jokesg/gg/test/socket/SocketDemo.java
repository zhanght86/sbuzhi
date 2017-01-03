package com.jokesg.gg.test.socket;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;

import org.junit.Test;

/**
 * 客户端服务端示例
 * @author stealth.Lee
 * @date 2016年12月29日 下午4:07:04
 */
public class SocketDemo {

	@Test
	public void client(){
		Socket socket = null;
		OutputStream out = null;
		InputStream in = null;
		try {
			// 1.构造一个socket的对象，指明服务端的IP地址和端口号
			socket = new Socket(InetAddress.getLocalHost(), 9099);
			out = socket.getOutputStream();
			out.write("hello, What's your name?".getBytes());
			socket.shutdownOutput();
			
			in = socket.getInputStream();
			int b = 0;
			while ((b = in.read()) != -1) {
				System.out.print((char)b);
			}
		} catch (IOException e) {
			
		} finally {
			try {
				if(out != null) out.close();
				if(socket != null) socket.close();
			} catch (IOException e) {
				
			}
		}
	}
	
	@Test
	public void server(){
		ServerSocket serverSocket = null;
		Socket socket = null;
		InputStream in = null;
		OutputStream out = null;
		try {
			serverSocket = new ServerSocket(9099);
			socket = serverSocket.accept();
			in = socket.getInputStream();
			int b = 0;
			while ((b = in.read()) != -1) {
				System.out.print((char)b);
			}
			
			out = socket.getOutputStream();
			out.write("Hello,my name is stealth Lee.".getBytes());
		} catch (IOException e) {
			
		} finally {
			try {
				if(in != null) in.close();
				if(socket != null) socket.close();
				if(serverSocket != null) serverSocket.close();
				if(out != null) out.close();
			} catch (IOException e) {
				
			}
		}
		
	}
	
}
