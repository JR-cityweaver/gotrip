package com.qianfeng.manager.bean;

import java.io.Serializable;

public class PermissionBean implements Serializable{
	private static final long serialVersionUID = 7876376378070857657L;
	private Integer pId;
	private String pName;
	private Integer pMnaagerId;
	public Integer getpId() {
		return pId;
	}
	public void setpId(Integer pId) {
		this.pId = pId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public Integer getpMnaagerId() {
		return pMnaagerId;
	}
	public void setpMnaagerId(Integer pMnaagerId) {
		this.pMnaagerId = pMnaagerId;
	}
	
}
