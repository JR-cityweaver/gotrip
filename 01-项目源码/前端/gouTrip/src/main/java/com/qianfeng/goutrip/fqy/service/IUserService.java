package com.qianfeng.goutrip.fqy.service;

import com.qianfeng.goutrip.fqy.bean.TbUser;

public interface IUserService {

	void registerUser(TbUser user);
	void updatePW(TbUser user);
}
