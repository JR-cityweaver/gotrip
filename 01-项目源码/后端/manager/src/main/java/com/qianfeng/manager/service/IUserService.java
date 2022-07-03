package com.qianfeng.manager.service;

import java.util.List;

import com.qianfeng.manager.bean.UserBean;

public interface IUserService {
	List<UserBean> queryUserList(Integer pageNo);
	int queryUserCount();
}
