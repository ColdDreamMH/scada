package com.scada.dao;

import java.util.List;

import com.scada.domain.MachineRoom;

public interface MachineRoomDao {

	public void saveMachineRoom(MachineRoom machineRoom);
	
	public void delete(Integer id);
	
	public List<MachineRoom> getAll();
	
	public MachineRoom getMachineRoomByName(String name);
	
}
