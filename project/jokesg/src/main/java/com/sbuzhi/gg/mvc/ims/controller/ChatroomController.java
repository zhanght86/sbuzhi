package com.sbuzhi.gg.mvc.ims.controller;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sbuzhi.gg.web.controller.BaseController;
/**
 * 聊天室控制器
 * @author stealth.Lee
 * @date 2016年12月7日 下午5:06:02
 */
@Controller
@RequestMapping("ims")
public class ChatroomController extends BaseController{
	
	 HttpSession session ;
	 ServletContext application;
	
	@RequestMapping("chatMain")
	public String index(){
		return "ims/online/chatMain";
	}
	
	/**
     * 前端发送聊天内容
     * @param request
     * @param model
     */
    @RequestMapping("sentContent")
    public void sentContent(HttpServletRequest request,Model model,PrintWriter out){
        //存储信息的全局变量
        application = request.getSession().getServletContext();
        session = request.getSession();
        if(application.getAttribute("message")==null){
            application.setAttribute("message", "");
        }
        //获取application中存储的聊天内容
        String sourceMessage = application.getAttribute("message").toString();
        //获取前端发送的聊天内容
        String content = request.getParameter("content");
        content = content.replace("<:", "<img src='/chatroom/static/pic/");
        content = content.replace(":>", ".gif'/>");
        // 获取session中的登陆者
        String name = session.getAttribute("name").toString();
        sourceMessage += this.getTime()+ "<font color='blue'><strong>&nbsp;"+name+"</strong></font>&nbsp:"+content+"</br>";
        application.setAttribute("message", sourceMessage);
        //写入返回结果
        out.write("success");
    }
    
    /**
     * 前端定时获取聊天信息
     * @param request
     * @param model
     * @param out
     */
    @RequestMapping("getMassageList")
    public void getMassageList(HttpServletRequest request,Model model,PrintWriter out){
        application = request.getSession().getServletContext();
        if(application.getAttribute("message")==null){
            application.setAttribute("message", "");
        }
        //获取application中存储的聊天内容
        String sourceMessage = application.getAttribute("message").toString();
        String str = null;
        try {
            str = new String (sourceMessage.getBytes(), "utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        out.write(str);
    }
    
    /**
     * 前端定时获取在线人员
     * @param request
     * @param model
     * @param out
     */
    @RequestMapping("getOnlineList")
    public void getOnlineList(HttpServletRequest request,Model model,PrintWriter out){
        application = request.getSession().getServletContext();
        if(application.getAttribute("onLine")==null){
            application.setAttribute("onLine", "0");
        }
        //获取application中存储在 线人员
        String sourceOnline = application.getAttribute("onLine").toString();
        out.write(sourceOnline);
    }
    
    /**
     * 自定义日期格式
     * @return
     */
    private String getTime(){
        Date date = new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        return df.format(date);
    }
	
}	