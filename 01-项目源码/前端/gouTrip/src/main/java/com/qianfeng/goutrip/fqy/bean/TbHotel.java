package com.qianfeng.goutrip.fqy.bean;

import java.util.List;

public class TbHotel {
	
	private Integer hotel_id; 

	private String hotel_name;
	
	private String hotel_introduce;
	
	private String hotel_address;
	
	private String hotel_price;
	
	private Integer hotel_type;
	
	private String hotel_groom;
	
	private String hotel_around;
	
	private String hotel_xingji;

	private String hotel_food;
	
	private String hotel_play;
	
	private String hotel_meeting;
	
	private String hotel_card;

	private String hotel_traffic;
	
	private Integer hotel_status;

	private List<TbRoom> roomList;
	
	public Integer getHotel_status() {
		return hotel_status;
	}

	public void setHotel_status(Integer hotel_status) {
		this.hotel_status = hotel_status;
	}

	public TbHotel(Integer hotel_id, String hotel_name, String hotel_introduce,
			String hotel_address, String hotel_price, Integer hotel_type,
			String hotel_groom, String hotel_around, String hotel_xingji,
			String hotel_food, String hotel_play, String hotel_meeting,
			String hotel_card, String hotel_traffic,Integer hotel_status, List<TbRoom> roomList) {
		super();
		this.hotel_id = hotel_id;
		this.hotel_name = hotel_name;
		this.hotel_introduce = hotel_introduce;
		this.hotel_address = hotel_address;
		this.hotel_price = hotel_price;
		this.hotel_type = hotel_type;
		this.hotel_groom = hotel_groom;
		this.hotel_around = hotel_around;
		this.hotel_xingji = hotel_xingji;
		this.hotel_food = hotel_food;
		this.hotel_play = hotel_play;
		this.hotel_meeting = hotel_meeting;
		this.hotel_card = hotel_card;
		this.hotel_traffic = hotel_traffic;
		this.hotel_status = hotel_status;
		this.roomList = roomList;
	}

	public Integer getHotel_id() {
		return hotel_id;
	}

	public void setHotel_id(Integer hotel_id) {
		this.hotel_id = hotel_id;
	}

	public String getHotel_name() {
		return hotel_name;
	}

	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}

	public String getHotel_introduce() {
		return hotel_introduce;
	}

	public void setHotel_introduce(String hotel_introduce) {
		this.hotel_introduce = hotel_introduce;
	}

	public String getHotel_address() {
		return hotel_address;
	}

	public void setHotel_address(String hotel_address) {
		this.hotel_address = hotel_address;
	}

	public String getHotel_price() {
		return hotel_price;
	}

	public void setHotel_price(String hotel_price) {
		this.hotel_price = hotel_price;
	}

	public Integer getHotel_type() {
		return hotel_type;
	}

	public void setHotel_type(Integer hotel_type) {
		this.hotel_type = hotel_type;
	}

	public String getHotel_groom() {
		return hotel_groom;
	}

	public void setHotel_groom(String hotel_groom) {
		this.hotel_groom = hotel_groom;
	}

	public String getHotel_around() {
		return hotel_around;
	}

	public void setHotel_around(String hotel_around) {
		this.hotel_around = hotel_around;
	}

	public String getHotel_xingji() {
		return hotel_xingji;
	}

	public void setHotel_xingji(String hotel_xingji) {
		this.hotel_xingji = hotel_xingji;
	}

	public String getHotel_food() {
		return hotel_food;
	}

	public void setHotel_food(String hotel_food) {
		this.hotel_food = hotel_food;
	}

	public String getHotel_play() {
		return hotel_play;
	}

	public void setHotel_play(String hotel_play) {
		this.hotel_play = hotel_play;
	}

	public String getHotel_meeting() {
		return hotel_meeting;
	}

	public void setHotel_meeting(String hotel_meeting) {
		this.hotel_meeting = hotel_meeting;
	}

	public String getHotel_card() {
		return hotel_card;
	}

	public void setHotel_card(String hotel_card) {
		this.hotel_card = hotel_card;
	}

	public String getHotel_traffic() {
		return hotel_traffic;
	}

	public void setHotel_traffic(String hotel_traffic) {
		this.hotel_traffic = hotel_traffic;
	}

	public List<TbRoom> getRoomList() {
		return roomList;
	}

	public void setRoomList(List<TbRoom> roomList) {
		this.roomList = roomList;
	}

	public TbHotel() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
