package com.scada.domain;

import java.util.Date;

public class User {
	//����ID
	private Integer userId;
	//Ա������
	private String username;
	//��¼��
	private String loginName;
	//��¼����
	private String loginPwd;
	//��������
	private Date birthday;
	//�Ա�
	private String sex;
	//��ϵ��ַ
	private String address;
	//��ϵ�绰
	private String contactTel;
	//�����ʼ�
	private String email;
	//�Ƿ���ְ
	private String isDuty;
	//��ְʱ��
	private Date onDutyDate;
	//��ע
	private String remark;
	//Ȩ�޵ȼ�
	private Integer rightsId;
	
	public Integer getRightsId() {
		return rightsId;
	}
	public void setRightsId(Integer rightsId) {
		this.rightsId = rightsId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getLoginPwd() {
		return loginPwd;
	}
	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContactTel() {
		return contactTel;
	}
	public void setContactTel(String contactTel) {
		this.contactTel = contactTel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getIsDuty() {
		return isDuty;
	}
	public void setIsDuty(String isDuty) {
		this.isDuty = isDuty;
	}
	public Date getOnDutyDate() {
		return onDutyDate;
	}
	public void setOnDutyDate(Date onDutyDate) {
		this.onDutyDate = onDutyDate;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
	
}
