package com.qianfeng.goutrip.fqy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qianfeng.goutrip.fqy.bean.TbAddress;
import com.qianfeng.goutrip.fqy.bean.TbTraveller;
import com.qianfeng.goutrip.fqy.dao.IMyselfDAO;
import com.qianfeng.goutrip.fqy.service.IMyselfService;

@Service
@Transactional
public class MyselfServiceImpl implements IMyselfService {

	private IMyselfDAO myselfDAO;
	
	@Autowired
	public void setMyselfDAO(IMyselfDAO myselfDAO) {
		this.myselfDAO = myselfDAO;
	}

	public void insertAddr(TbAddress addr) {
		myselfDAO.insertAddr(addr);
	}

	public List<TbAddress> getAddress(Integer pageNo) {
		return myselfDAO.getAddress(pageNo);
	}

	public int addrCount() {
		int count = myselfDAO.addrCount();
		int num = 0;
		if(count%ADDR_SIZE == 0){
			num = count/ADDR_SIZE;
		}else{
			num = count/ADDR_SIZE + 1;
		}
		return num;
	}

	public void deleteAddr(Integer address_id) {
		myselfDAO.deleteAddr(address_id);
	}

	public void updateAddr(TbAddress addr) {
		myselfDAO.updateAddr(addr);
	}

	public void saveTraveller(TbTraveller traveller) {
		myselfDAO.saveTraveller(traveller);
	}

	public List<TbTraveller> getTraveller(Integer pageNo) {
		return myselfDAO.getTraveller(pageNo);
	}

	public int TraCount() {
		int countTra = myselfDAO.TraCount();
		int numTra = 0;
		if(countTra%ADDR_SIZE == 0){
			numTra = countTra/ADDR_SIZE;
		}else{
			numTra = countTra/ADDR_SIZE + 1;
		}
		return numTra;
	}

	public void deleteTra(Integer traveller_id) {
		myselfDAO.deleteTra(traveller_id);
	}

	public void updateTra(TbTraveller traveller) {
		myselfDAO.updateTra(traveller);
	}
	
}
