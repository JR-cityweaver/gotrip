package com.qianfeng.goutrip.zcy.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisShardInfo;

import com.google.gson.Gson;
import com.qianfeng.goutrip.zcy.bean.UserDTO;
import com.qianfeng.goutrip.zcy.dao.IRedisDAO;

@Repository
public class RedisDAOImpl implements IRedisDAO{
	JedisShardInfo info=new JedisShardInfo("192.168.242.60", 6379);
	Jedis jedis=new Jedis(info);
	Gson gson=new Gson();
	
	

	public void set(String key, Object value) {
		String jsonString=gson.toJson(value);
		jedis.set(key, jsonString);
	}

	public <T> T get(String key, Class<T> clazz) {
		String value=jedis.get(key);
		return gson.fromJson(value, clazz);
	}
	
	

}
