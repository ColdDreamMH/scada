package com.scada.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.MachineRoom;
import com.scada.service.MachineRoomService;

public class MachineRoomAction extends ActionSupport implements RequestAware {

	private MachineRoomService machineRoomService;
	
	public MachineRoomService getMachineRoomService() {
		return machineRoomService;
	}

	public void setMachineRoomService(MachineRoomService machineRoomService) {
		this.machineRoomService = machineRoomService;
	}

	public String saveMachineRoom(){
		MachineRoom machineRoom = new MachineRoom();
		machineRoom.setName("机房2");
		machineRoom.setPosition("机房二号房");
		machineRoom.setRemark("就是一个备注而已2");
		machineRoomService.saveMachineRoom(machineRoom);
		return null;
	}
	
	public String input(){
		request.put("machineRooms", machineRoomService.getAll());
		return INPUT;
	}
	
	
	private Map<String, Object> request;
	
	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
	
	
	public String show(){
		request.put("machineRooms", machineRoomService.getAll());
		return "show";
	}
	
}
