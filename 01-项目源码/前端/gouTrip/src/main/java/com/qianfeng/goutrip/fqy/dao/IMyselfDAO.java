package com.qianfeng.goutrip.fqy.dao;

import java.util.List;

import com.qianfeng.goutrip.fqy.bean.TbAddress;
import com.qianfeng.goutrip.fqy.bean.TbTraveller;

public interface IMyselfDAO {
	
	void insertAddr(TbAddress addr);
	List<TbAddress> getAddress(Integer pageNo);
	int addrCount();
	void deleteAddr(Integer address_id);
	void updateAddr(TbAddress addr);
	void saveTraveller(TbTraveller traveller);
	List<TbTraveller> getTraveller(Integer pageNo);
	int TraCount();
	void deleteTra(Integer traveller_id);
	void updateTra(TbTraveller traveller);
}
