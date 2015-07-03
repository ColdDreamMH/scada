package com.scada.action;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.SpamIdentify;
import com.scada.service.SpamIdentifyService;

public class SpamIdentifyAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	private SpamIdentifyService spamIdentifyService;
	
	public SpamIdentifyService getSpamIdentifyService() {
		return spamIdentifyService;
	}

	public void setSpamIdentifyService(SpamIdentifyService spamIdentifyService) {
		this.spamIdentifyService = spamIdentifyService;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String home(){
		request.setAttribute("spamIdentify", spamIdentifyService.getAll());
		return "home";
	}
	
	public String save() throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		SpamIdentify spamIdentify = new SpamIdentify();
		spamIdentify.setField(request.getParameter("sensitiveWord"));
		spamIdentifyService.save(spamIdentify);
		request.setAttribute("spamIdentify", spamIdentifyService.getAll());
		return "save";
	}
	
	public String execute() throws Exception {
		
		return super.execute();
	}
	
}
