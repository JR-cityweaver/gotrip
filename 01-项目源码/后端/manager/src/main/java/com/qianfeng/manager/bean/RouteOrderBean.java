package com.qianfeng.manager.bean;

import java.util.Date;

public class RouteOrderBean {

	private String orderId;
	private Integer	orderAdult;
	private Integer	orderChild;
	private Integer	orderRoom;
	private Integer tb_user_user_id;
	private String orderNum;
	private String orderTitle;
	private String orderType;
	private String orderTotalprice;
	private String orderBegindate;
	private String orderEnddate;
	private String orderBegin;
	private String orderEnd;
	private Date orderTime; 
	private Integer orderStatus;
	
	public Integer getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(Integer orderStatus) {
		this.orderStatus = orderStatus;
	}
	public Date getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public Integer getOrderAdult() {
		return orderAdult;
	}
	public void setOrderAdult(Integer orderAdult) {
		this.orderAdult = orderAdult;
	}
	public Integer getOrderChild() {
		return orderChild;
	}
	public void setOrderChild(Integer orderChild) {
		this.orderChild = orderChild;
	}
	public Integer getOrderRoom() {
		return orderRoom;
	}
	public void setOrderRoom(Integer orderRoom) {
		this.orderRoom = orderRoom;
	}
	public Integer getTb_user_user_id() {
		return tb_user_user_id;
	}
	public void setTb_user_user_id(Integer tb_user_user_id) {
		this.tb_user_user_id = tb_user_user_id;
	}
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public String getOrderTitle() {
		return orderTitle;
	}
	public void setOrderTitle(String orderTitle) {
		this.orderTitle = orderTitle;
	}
	public String getOrderType() {
		return orderType;
	}
	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}
	public String getOrderTotalprice() {
		return orderTotalprice;
	}
	public void setOrderTotalprice(String orderTotalprice) {
		this.orderTotalprice = orderTotalprice;
	}
	public String getOrderBegindate() {
		return orderBegindate;
	}
	public void setOrderBegindate(String orderBegindate) {
		this.orderBegindate = orderBegindate;
	}
	public String getOrderEnddate() {
		return orderEnddate;
	}
	public void setOrderEnddate(String orderEnddate) {
		this.orderEnddate = orderEnddate;
	}
	public String getOrderBegin() {
		return orderBegin;
	}
	public void setOrderBegin(String orderBegin) {
		this.orderBegin = orderBegin;
	}
	public String getOrderEnd() {
		return orderEnd;
	}
	public void setOrderEnd(String orderEnd) {
		this.orderEnd = orderEnd;
	}
	
}
