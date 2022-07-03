package com.qianfeng.goutrip.fqy.bean;

public class TbAddress {
	
	private Integer address_id;
	
	private String address_name;
	
	private String address_phone;
	
	private String address_tele;
	
	private String address_area;
	
	private String address_detail;
	
	private Integer address_postcode;
	
	private Integer address_status;
	
	private Integer tb_user_user_id;

	public Integer getAddress_status() {
		return address_status;
	}

	public void setAddress_status(Integer address_status) {
		this.address_status = address_status;
	}

	public Integer getAddress_id() {
		return address_id;
	}

	public void setAddress_id(Integer address_id) {
		this.address_id = address_id;
	}

	public String getAddress_name() {
		return address_name;
	}

	public void setAddress_name(String address_name) {
		this.address_name = address_name;
	}

	public String getAddress_phone() {
		return address_phone;
	}

	public void setAddress_phone(String address_phone) {
		this.address_phone = address_phone;
	}

	public String getAddress_tele() {
		return address_tele;
	}

	public void setAddress_tele(String address_tele) {
		this.address_tele = address_tele;
	}

	public String getAddress_area() {
		return address_area;
	}

	public void setAddress_area(String address_area) {
		this.address_area = address_area;
	}

	public String getAddress_detail() {
		return address_detail;
	}

	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}

	public Integer getAddress_postcode() {
		return address_postcode;
	}

	public void setAddress_postcode(Integer address_postcode) {
		this.address_postcode = address_postcode;
	}

	public Integer getTb_user_user_id() {
		return tb_user_user_id;
	}

	public void setTb_user_user_id(Integer tb_user_user_id) {
		this.tb_user_user_id = tb_user_user_id;
	}


	public TbAddress(Integer address_id, String address_name,
			String address_phone, String address_tele, String address_area,
			String address_detail, Integer address_postcode,
			Integer address_status, Integer tb_user_user_id) {
		super();
		this.address_id = address_id;
		this.address_name = address_name;
		this.address_phone = address_phone;
		this.address_tele = address_tele;
		this.address_area = address_area;
		this.address_detail = address_detail;
		this.address_postcode = address_postcode;
		this.address_status = address_status;
		this.tb_user_user_id = tb_user_user_id;
	}

	public TbAddress() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
