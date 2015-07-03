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
		//����
		connect();
		setBaseMessage();
		return super.execute();
	}
	
	public String show(){
		return "show";
	}
	
	
	//-------����Ļ�������------
	public static Folder folder = null;
	public static Store store = null;
    Message[]  messages = null;
	//��������
	public void connect() throws Exception{
		Properties props = new Properties();// ׼�����ӷ������ĻỰ��Ϣ 
		props.setProperty("mail.store.protocol", "pop3");       // Э�� 
        props.setProperty("mail.pop3.port", "110");             // �˿� 
        props.setProperty("mail.pop3.host", this.getHost());    // pop3������ 
        // ����Sessionʵ������ 
        Session session = Session.getInstance(props); 
        store = session.getStore("pop3"); 
        store.connect(this.getUsername(), this.getPassword()); 
        // ����ռ��� 
        folder = store.getFolder("INBOX"); 
        /* Folder.READ_ONLY��ֻ��Ȩ��
         * Folder.READ_WRITE���ɶ���д�������޸��ʼ���״̬��
         */ 
        folder.open(Folder.READ_WRITE); //���ռ��� 
        // �õ��ռ����е������ʼ�,������ 
        messages = folder.getMessages();
	}
	//����ʼ��Ļ�����Ϣ
	public void setBaseMessage() throws Exception{
		//����ռ����е��ʼ����� 
		request.setAttribute("allMailCount", folder.getMessageCount());
		//����ʼ�����Ϣ
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
