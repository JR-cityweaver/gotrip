package com.qianfeng.goutrip.zcy.dao;

import java.util.Map;

public interface ILimitDAO {

	int selectCount(Map<Object, Object> map);
	
	void updateCount(Map<Object, Object> map);
}
