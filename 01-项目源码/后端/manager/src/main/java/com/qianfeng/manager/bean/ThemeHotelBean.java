package com.qianfeng.manager.bean;

import java.io.Serializable;
import java.util.List;

public class ThemeHotelBean implements Serializable{
	private static final long serialVersionUID = 2076707325828675876L;
	private Integer hId;
	private String hName;
	private String hIntroduce;
	private String hAddress;
	private String hPrice;
	private Integer hType;
	private String hGroom;
	private String hAround;
	private String hXingji;
	private String hFood;
	private String hPlay;
	private String hMeeting;
	private String hCard;
	private String hTraffic;
	private Integer hStatus;
	
	public Integer gethStatus() {
		return hStatus;
	}
	public void sethStatus(Integer hStatus) {
		this.hStatus = hStatus;
	}
	private List<RoomBean> roomList;
	
	public List<RoomBean> getRoomList() {
		return roomList;
	}
	public void setRoomList(List<RoomBean> roomList) {
		this.roomList = roomList;
	}
	public String gethXingji() {
		return hXingji;
	}
	public void sethXingji(String hXingji) {
		this.hXingji = hXingji;
	}
	public String gethFood() {
		return hFood;
	}
	public void sethFood(String hFood) {
		this.hFood = hFood;
	}
	public String gethPlay() {
		return hPlay;
	}
	public void sethPlay(String hPlay) {
		this.hPlay = hPlay;
	}
	public String gethMeeting() {
		return hMeeting;
	}
	public void sethMeeting(String hMeeting) {
		this.hMeeting = hMeeting;
	}
	public String gethCard() {
		return hCard;
	}
	public void sethCard(String hCard) {
		this.hCard = hCard;
	}
	public String gethTraffic() {
		return hTraffic;
	}
	public void sethTraffic(String hTraffic) {
		this.hTraffic = hTraffic;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Integer gethId() {
		return hId;
	}
	public void sethId(Integer hId) {
		this.hId = hId;
	}
	public String gethName() {
		return hName;
	}
	public void sethName(String hName) {
		this.hName = hName;
	}
	public String gethIntroduce() {
		return hIntroduce;
	}
	public void sethIntroduce(String hIntroduce) {
		this.hIntroduce = hIntroduce;
	}
	public String gethAddress() {
		return hAddress;
	}
	public void sethAddress(String hAddress) {
		this.hAddress = hAddress;
	}
	public String gethPrice() {
		return hPrice;
	}
	public void sethPrice(String hPrice) {
		this.hPrice = hPrice;
	}
	public Integer gethType() {
		return hType;
	}
	public void sethType(Integer hType) {
		this.hType = hType;
	}
	public String gethGroom() {
		return hGroom;
	}
	public void sethGroom(String hGroom) {
		this.hGroom = hGroom;
	}
	public String gethAround() {
		return hAround;
	}
	public void sethAround(String hAround) {
		this.hAround = hAround;
	}
	
}
