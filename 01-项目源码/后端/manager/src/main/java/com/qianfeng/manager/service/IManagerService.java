package com.qianfeng.manager.service;

import java.util.List;

import com.qianfeng.manager.bean.ManagerBean;

public interface IManagerService {
	ManagerBean getManager(ManagerBean manager);
	List<String> getPermissionList(String mName);
	List<ManagerBean> getManagerList(Integer pageNo);
	int getManagerCount();
	String getTotalPrice();
	String getHotelPrice();
	void deleteManager(Integer mId);
	void insertManager(ManagerBean manager);
}
