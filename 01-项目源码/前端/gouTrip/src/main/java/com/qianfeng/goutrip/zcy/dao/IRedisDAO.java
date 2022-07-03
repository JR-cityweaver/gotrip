package com.qianfeng.goutrip.zcy.dao;



public interface IRedisDAO{

	void set(String key,Object value);
	
	<T> T get(String key,Class<T> clazz);
}
