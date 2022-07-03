package com.qianfeng.manager.bean;

public class RoomBean {
	
	private Integer room_id;
	
	private String room_name;
	
	private String room_bed;
	
	private String room_breakfast;
	
	private String room_wifi;
	
	private String room_explain;
	
	private Integer room_price;
	
	private String room_area;
	
	private String room_floor;
	
	private Integer room_status;
	
	private Integer tb_hotel_hotel_id;
	
	public Integer getTb_hotel_hotel_id() {
		return tb_hotel_hotel_id;
	}

	public void setTb_hotel_hotel_id(Integer tb_hotel_hotel_id) {
		this.tb_hotel_hotel_id = tb_hotel_hotel_id;
	}

	public Integer getRoom_status() {
		return room_status;
	}

	public void setRoom_status(Integer room_status) {
		this.room_status = room_status;
	}

	private ThemeHotelBean hotel;
	

	public ThemeHotelBean getHotel() {
		return hotel;
	}

	public void setHotel(ThemeHotelBean hotel) {
		this.hotel = hotel;
	}

	public Integer getRoom_id() {
		return room_id;
	}

	public void setRoom_id(Integer room_id) {
		this.room_id = room_id;
	}

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public String getRoom_bed() {
		return room_bed;
	}

	public void setRoom_bed(String room_bed) {
		this.room_bed = room_bed;
	}

	public String getRoom_breakfast() {
		return room_breakfast;
	}

	public void setRoom_breakfast(String room_breakfast) {
		this.room_breakfast = room_breakfast;
	}

	public String getRoom_wifi() {
		return room_wifi;
	}

	public void setRoom_wifi(String room_wifi) {
		this.room_wifi = room_wifi;
	}

	public String getRoom_explain() {
		return room_explain;
	}

	public void setRoom_explain(String room_explain) {
		this.room_explain = room_explain;
	}

	public Integer getRoom_price() {
		return room_price;
	}

	public void setRoom_price(Integer room_price) {
		this.room_price = room_price;
	}

	public String getRoom_area() {
		return room_area;
	}

	public void setRoom_area(String room_area) {
		this.room_area = room_area;
	}

	public String getRoom_floor() {
		return room_floor;
	}

	public void setRoom_floor(String room_floor) {
		this.room_floor = room_floor;
	}

}
