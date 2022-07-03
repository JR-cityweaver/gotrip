package com.qianfeng.goutrip.fqy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.qianfeng.goutrip.fqy.bean.TbUser;
import com.qianfeng.goutrip.fqy.dao.IUserDAO;
import com.qianfeng.goutrip.fqy.service.IUserService;

@Component
@Transactional
public class UserServiceImpl implements IUserService {
//?
	private IUserDAO userDAO;
	
	@Autowired
	public void setUserDAO(IUserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	public void registerUser(TbUser user) {
		userDAO.registerUser(user);
	}

	public void updatePW(TbUser user) {
		userDAO.updatePW(user);
	}

}
