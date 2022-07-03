package com.qianfeng.goutrip.fqy.bean;

public class TbUser {
	
	private Integer user_id;
	
	private String user_phone;
	
	private String user_password;

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public TbUser(Integer user_id, String user_phone, String user_password) {
		super();
		this.user_id = user_id;
		this.user_phone = user_phone;
		this.user_password = user_password;
	}

	public TbUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	
}
