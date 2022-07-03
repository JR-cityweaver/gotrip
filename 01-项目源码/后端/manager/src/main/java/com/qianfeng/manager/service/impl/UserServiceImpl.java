package com.qianfeng.manager.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.qianfeng.manager.bean.UserBean;
import com.qianfeng.manager.dao.IUserDao;
import com.qianfeng.manager.service.IUserService;
@Component
@Transactional
public class UserServiceImpl implements IUserService{
	private IUserDao userDao;
	private	static final int PAGE_SIZE = 5;
	@Autowired
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}

	public List<UserBean> queryUserList(Integer pageNo) {
		return userDao.queryUserList(pageNo);
	}

	public int queryUserCount() {
		int count = userDao.queryUserCount();
		int totalPageNo;
		if(count%PAGE_SIZE == 0){
			totalPageNo = count/PAGE_SIZE;
		}else{
			totalPageNo = count/PAGE_SIZE+1;
		}
		return totalPageNo;
	}

}
