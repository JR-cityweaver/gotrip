package com.qianfeng.goutrip.fqy.bean;

public class TbTraveller {
	
	private Integer traveller_id;
	
	private String traveller_name;
	
	private String traveller_phone;
	
	private String traveller_cardtype;
	
	private String traveller_cardnum;
	
	private String traveller_sex;
	
	private String traveller_date;
	
	private String traveller_mail;
	
	private String traveller_type;
	
	private Integer tb_user_user_id;

	
	public TbTraveller(Integer traveller_id, String traveller_name,
			String traveller_phone, String traveller_cardtype,
			String traveller_cardnum, String traveller_sex,
			String traveller_date, String traveller_mail,
			String traveller_type, Integer tb_user_user_id) {
		super();
		this.traveller_id = traveller_id;
		this.traveller_name = traveller_name;
		this.traveller_phone = traveller_phone;
		this.traveller_cardtype = traveller_cardtype;
		this.traveller_cardnum = traveller_cardnum;
		this.traveller_sex = traveller_sex;
		this.traveller_date = traveller_date;
		this.traveller_mail = traveller_mail;
		this.traveller_type = traveller_type;
		this.tb_user_user_id = tb_user_user_id;
	}


	public Integer getTraveller_id() {
		return traveller_id;
	}


	public void setTraveller_id(Integer traveller_id) {
		this.traveller_id = traveller_id;
	}


	public String getTraveller_name() {
		return traveller_name;
	}


	public void setTraveller_name(String traveller_name) {
		this.traveller_name = traveller_name;
	}


	public String getTraveller_phone() {
		return traveller_phone;
	}


	public void setTraveller_phone(String traveller_phone) {
		this.traveller_phone = traveller_phone;
	}


	public String getTraveller_cardtype() {
		return traveller_cardtype;
	}


	public void setTraveller_cardtype(String traveller_cardtype) {
		this.traveller_cardtype = traveller_cardtype;
	}


	public String getTraveller_cardnum() {
		return traveller_cardnum;
	}


	public void setTraveller_cardnum(String traveller_cardnum) {
		this.traveller_cardnum = traveller_cardnum;
	}


	public String getTraveller_sex() {
		return traveller_sex;
	}


	public void setTraveller_sex(String traveller_sex) {
		this.traveller_sex = traveller_sex;
	}


	public String getTraveller_date() {
		return traveller_date;
	}


	public void setTraveller_date(String traveller_date) {
		this.traveller_date = traveller_date;
	}


	public String getTraveller_mail() {
		return traveller_mail;
	}


	public void setTraveller_mail(String traveller_mail) {
		this.traveller_mail = traveller_mail;
	}


	public String getTraveller_type() {
		return traveller_type;
	}


	public void setTraveller_type(String traveller_type) {
		this.traveller_type = traveller_type;
	}


	public Integer getTb_user_user_id() {
		return tb_user_user_id;
	}


	public void setTb_user_user_id(Integer tb_user_user_id) {
		this.tb_user_user_id = tb_user_user_id;
	}


	public TbTraveller() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
