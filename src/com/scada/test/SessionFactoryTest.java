package com.scada.test;

import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.scada.domain.MachineRoom;
import com.scada.domain.SpamIdentify;
import com.scada.service.MachineRoomService;
import com.scada.service.SpamIdentifyService;


public class SessionFactoryTest {

	@Test
	public void testSessionFactory(){
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		SessionFactory sessionFactory = (SessionFactory) context.getBean("sessionFactory");
		
	}
	
	@Test
	public void testMachineRoom(){
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		MachineRoomService machineRoomService = (MachineRoomService) context.getBean("machineRoomService");
		MachineRoom machineRoom = new MachineRoom();
		machineRoom.setName("����4");
		machineRoom.setPosition("����4�ŷ�");
		machineRoom.setRemark("����һ����ע����4");
		machineRoomService.saveMachineRoom(machineRoom);
	}
	
	@Test
	public void testMail(){
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		SpamIdentifyService spamIdentifyService = (SpamIdentifyService) context.getBean("spamIdentifyService");
		SpamIdentify spamIdentify = new SpamIdentify();
		spamIdentify.setField("���");
		spamIdentifyService.save(spamIdentify);
	}
	
}
