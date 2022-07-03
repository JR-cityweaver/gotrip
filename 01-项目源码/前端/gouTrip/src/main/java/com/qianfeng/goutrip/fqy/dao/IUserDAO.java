package com.qianfeng.goutrip.fqy.dao;

import com.qianfeng.goutrip.fqy.bean.TbUser;

public interface IUserDAO {
	void registerUser(TbUser user);
	void updatePW(TbUser user);
}
