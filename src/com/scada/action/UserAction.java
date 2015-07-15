package com.scada.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.User;
import com.scada.service.UserService;

public class UserAction extends ActionSupport implements ServletRequestAware,ServletResponseAware{

	private UserService userService;
	protected HttpServletRequest request =null;
	protected HttpServletResponse response =null;


	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	public String list() {
		List<User> list = userService.getAll();
		request.setAttribute("userList", list);
		return SUCCESS;
	}
	
	
}
