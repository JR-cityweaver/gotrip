package com.qianfeng.goutrip.fqy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qianfeng.goutrip.fqy.bean.TbRoom;
import com.qianfeng.goutrip.fqy.dao.IRoomDAO;
import com.qianfeng.goutrip.fqy.service.IRoomService;

@Service
public class RoomServiceImpl implements IRoomService {
	
	private IRoomDAO roomDAO;
	//?
	@Autowired
	public void setRoomDAO(IRoomDAO roomDAO) {
		this.roomDAO = roomDAO;
	}

	public TbRoom getRoomOrder(Integer room_id) {
		return roomDAO.getRoomOrder(room_id);
	}

}
