package com.qianfeng.goutrip.fqy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qianfeng.goutrip.fqy.bean.TbRoom;
import com.qianfeng.goutrip.fqy.service.IRoomService;

@Controller
public class RoomController {
	
	private IRoomService roomService;

	@Autowired
	public void setRoomService(IRoomService roomService) {
		this.roomService = roomService;
	}
	
	@RequestMapping("/hotelorder.do")
	public String getRoomOrder(Integer room_id,Model model){
		TbRoom room = roomService.getRoomOrder(room_id);
		model.addAttribute("room", room);
		return "hotelOrder.jsp";
	}
}
