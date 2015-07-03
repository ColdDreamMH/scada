package com.scada.action;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Properties;

import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;

public class MaiLoginlAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {


	private String username;
	private String password;
	private String host;
	
	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	

	
	public String execute() throws Exception {
		//连接
		connect();
		setBaseMessage();
		return super.execute();
	}
	
	public String show(){
		return "show";
	}
	
	
	//-------邮箱的基本属性------
	public static Folder folder = null;
	public static Store store = null;
    Message[]  messages = null;
	//连接邮箱
	public void connect() throws Exception{
		Properties props = new Properties();// 准备连接服务器的会话信息 
		props.setProperty("mail.store.protocol", "pop3");       // 协议 
        props.setProperty("mail.pop3.port", "110");             // 端口 
        props.setProperty("mail.pop3.host", this.getHost());    // pop3服务器 
        // 创建Session实例对象 
        Session session = Session.getInstance(props); 
        store = session.getStore("pop3"); 
        store.connect(this.getUsername(), this.getPassword()); 
        // 获得收件箱 
        folder = store.getFolder("INBOX"); 
        /* Folder.READ_ONLY：只读权限
         * Folder.READ_WRITE：可读可写（可以修改邮件的状态）
         */ 
        folder.open(Folder.READ_WRITE); //打开收件箱 
        // 得到收件箱中的所有邮件,并解析 
        messages = folder.getMessages();
	}
	//获得邮件的基本信息
	public void setBaseMessage() throws Exception{
		//获得收件箱中的邮件总数 
		request.setAttribute("allMailCount", folder.getMessageCount());
		//获得邮件的信息
		request.setAttribute("mailMessages", messages);
	}
	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}


	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}


	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

}
