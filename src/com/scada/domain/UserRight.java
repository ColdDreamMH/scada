package com.scada.domain;

public class UserRight {
	
	//����ID
	private Integer id;
	//Ȩ��ID
	private Integer rightId;
	//���ݲɼ���������ģ��
	private boolean dataAcquisition;
	//Э������ģ��
	private boolean coordinatedDispatch;
	//ͳһ��Ϣ��ģ��
	private boolean unifiedDatabase;
	//Ӧ��չʾģ��
	private boolean applicationShow;
	//ҵ����Ӫ����ϵͳģ��
	private boolean serviceOperation;
	//�ͻ�����ϵͳ����ģ��
	private boolean customerService;
	//�ۺϰ칫ϵͳ����ģ��
	private boolean comprehensiveOffice;
	//����������ϵͳģ��
	private boolean wanSystem;
	//��վϵͳ����ģ��
	private boolean websiteSystem;
	//�ʼ�ϵͳ����ģ��
	private boolean mailSystem;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getRightId() {
		return rightId;
	}
	public void setRightId(Integer rightId) {
		this.rightId = rightId;
	}
	public boolean isDataAcquisition() {
		return dataAcquisition;
	}
	public void setDataAcquisition(boolean dataAcquisition) {
		this.dataAcquisition = dataAcquisition;
	}
	public boolean isCoordinatedDispatch() {
		return coordinatedDispatch;
	}
	public void setCoordinatedDispatch(boolean coordinatedDispatch) {
		this.coordinatedDispatch = coordinatedDispatch;
	}
	public boolean isUnifiedDatabase() {
		return unifiedDatabase;
	}
	public void setUnifiedDatabase(boolean unifiedDatabase) {
		this.unifiedDatabase = unifiedDatabase;
	}
	public boolean isApplicationShow() {
		return applicationShow;
	}
	public void setApplicationShow(boolean applicationShow) {
		this.applicationShow = applicationShow;
	}
	public boolean isServiceOperation() {
		return serviceOperation;
	}
	public void setServiceOperation(boolean serviceOperation) {
		this.serviceOperation = serviceOperation;
	}
	public boolean isCustomerService() {
		return customerService;
	}
	public void setCustomerService(boolean customerService) {
		this.customerService = customerService;
	}
	public boolean isComprehensiveOffice() {
		return comprehensiveOffice;
	}
	public void setComprehensiveOffice(boolean comprehensiveOffice) {
		this.comprehensiveOffice = comprehensiveOffice;
	}
	public boolean isWanSystem() {
		return wanSystem;
	}
	public void setWanSystem(boolean wanSystem) {
		this.wanSystem = wanSystem;
	}
	public boolean isWebsiteSystem() {
		return websiteSystem;
	}
	public void setWebsiteSystem(boolean websiteSystem) {
		this.websiteSystem = websiteSystem;
	}
	public boolean isMailSystem() {
		return mailSystem;
	}
	public void setMailSystem(boolean mailSystem) {
		this.mailSystem = mailSystem;
	}
	
	
	

}
