package com.scada.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.User;
import com.scada.domain.UserRight;
import com.scada.service.UserRightService;
import com.scada.service.UserService;

public class LoginAction extends ActionSupport  implements ServletRequestAware,ServletResponseAware {

	private UserService userService;
	private UserRightService userRightService;
	protected HttpServletRequest request =null;
	protected HttpServletResponse response =null;
	private String username;
	private String password;

	//登录信息验证
	public String loginValidate(){
		User user = userService.findUserByLoginName(username);
		if(user==null || !user.getLoginPwd().equals(password)){
			this.addFieldError("loginError", "用户名、密码不正确！！");
			return "error";
		}
		request.getSession().setAttribute("global_user", user);
		UserRight userRight = userRightService.findUserRightById(user.getRightsId());
		//request.getSession().setAttribute("global_user_userRight", userRight);
		request.setAttribute("global_user_userRight", userRight);
		return "home";
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public UserRightService getUserRightService() {
		return userRightService;
	}

	public void setUserRightService(UserRightService userRightService) {
		this.userRightService = userRightService;
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
}
