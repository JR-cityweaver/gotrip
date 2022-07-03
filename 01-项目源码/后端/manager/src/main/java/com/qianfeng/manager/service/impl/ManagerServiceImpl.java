package com.qianfeng.manager.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.qianfeng.manager.bean.ManagerBean;
import com.qianfeng.manager.dao.IManagerDao;
import com.qianfeng.manager.service.IManagerService;
@Component
public class ManagerServiceImpl implements IManagerService{
	private IManagerDao managerDao;
	private	static final int PAGE_SIZE = 5;
	
	@Autowired
	public void setManagerDao(IManagerDao managerDao) {
		this.managerDao = managerDao;
	}

	public ManagerBean getManager(ManagerBean manager) {
		
		return managerDao.getManager(manager);
	}

	public List<String> getPermissionList(String mName) {
		return managerDao.getPermissionList(mName);
	}

	public List<ManagerBean> getManagerList(Integer pageNo) {
		return managerDao.getManagerList(pageNo);
	}

	public int getManagerCount() {
		int count = managerDao.getManagerCount();
		int totalPageNo;
		if(count%PAGE_SIZE == 0){
			totalPageNo = count/PAGE_SIZE;
		}else{
			totalPageNo = count/PAGE_SIZE+1;
		}
		return totalPageNo;
	}

	public String getTotalPrice() {
		return managerDao.getTotalPrice();
	}

	public String getHotelPrice() {
		return managerDao.getHotelPrice();
	}

	public void deleteManager(Integer mId) {
		// TODO Auto-generated method stub
		managerDao.deleteManager(mId);
	}

	public void insertManager(ManagerBean manager) {
		// TODO Auto-generated method stub
		managerDao.insertManager(manager);
	}

}
