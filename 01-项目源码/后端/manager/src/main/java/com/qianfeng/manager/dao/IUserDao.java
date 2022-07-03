package com.qianfeng.manager.dao;

import java.util.List;

import com.qianfeng.manager.bean.UserBean;

public interface IUserDao {
	List<UserBean> queryUserList(Integer pageNo);
	int queryUserCount();
}
