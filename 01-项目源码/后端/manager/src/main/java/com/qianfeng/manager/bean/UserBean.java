package com.qianfeng.manager.bean;

import java.io.Serializable;

public class UserBean implements Serializable{
	private static final long serialVersionUID = 8460589957020671662L;
	private Integer uId;
	private String 	uPhone;
	private String uPassword;
	private String uNicheng;
	private String uRealnam;
	private String uEmail;
	private String uSex;
	private String uTele;
	private String uBirthday;
	public Integer getuId() {
		return uId;
	}
	public void setuId(Integer uId) {
		this.uId = uId;
	}
	public String getuPhone() {
		return uPhone;
	}
	public void setuPhone(String uPhone) {
		this.uPhone = uPhone;
	}
	public String getuPassword() {
		return uPassword;
	}
	public void setuPassword(String uPassword) {
		this.uPassword = uPassword;
	}
	public String getuNicheng() {
		return uNicheng;
	}
	public void setuNicheng(String uNicheng) {
		this.uNicheng = uNicheng;
	}
	public String getuRealnam() {
		return uRealnam;
	}
	public void setuRealnam(String uRealnam) {
		this.uRealnam = uRealnam;
	}
	public String getuEmail() {
		return uEmail;
	}
	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}
	public String getuSex() {
		return uSex;
	}
	public void setuSex(String uSex) {
		this.uSex = uSex;
	}
	public String getuTele() {
		return uTele;
	}
	public void setuTele(String uTele) {
		this.uTele = uTele;
	}
	public String getuBirthday() {
		return uBirthday;
	}
	public void setuBirthday(String uBirthday) {
		this.uBirthday = uBirthday;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	

}
