package com.qianfeng.goutrip.zcy.dao;

import com.qianfeng.goutrip.zcy.bean.UserDTO;

public interface IUserDAO {

	UserDTO loginByUser(UserDTO userDTO);
	
	void updateInfo(UserDTO userDTO);
	
	UserDTO selectInfo(Integer user_id);
}
