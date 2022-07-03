package com.qianfeng.manager.dao;

import java.util.List;

import com.qianfeng.manager.bean.ManagerBean;

public interface IManagerDao {
	ManagerBean getManager(ManagerBean manager);
	List<String> getPermissionList(String mName);
	List<ManagerBean> getManagerList(Integer pageNo);
	int getManagerCount();
	String getTotalPrice();
	String getHotelPrice();
	void deleteManager(Integer mId);
	void insertManager(ManagerBean manager);
}
