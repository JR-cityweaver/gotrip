package com.qianfeng.goutrip.fqy.service;

import java.util.List;

import com.qianfeng.goutrip.fqy.bean.TbAddress;
import com.qianfeng.goutrip.fqy.bean.TbTraveller;

public interface IMyselfService {

	void insertAddr(TbAddress addr);
	List<TbAddress> getAddress(Integer pageNo);
	int addrCount();
	final static int ADDR_SIZE = 5;
	void deleteAddr(Integer address_id);
	void updateAddr(TbAddress addr);
	void saveTraveller(TbTraveller traveller);
	List<TbTraveller> getTraveller(Integer pageNo);
	int TraCount();
	void deleteTra(Integer traveller_id);
	void updateTra(TbTraveller traveller);
}
