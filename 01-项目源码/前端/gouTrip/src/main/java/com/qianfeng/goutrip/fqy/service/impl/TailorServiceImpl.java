package com.qianfeng.goutrip.fqy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qianfeng.goutrip.fqy.bean.TbTailor;
import com.qianfeng.goutrip.fqy.dao.ITailorDAO;
import com.qianfeng.goutrip.fqy.service.ITailorService;

@Service
public class TailorServiceImpl implements ITailorService {

	private ITailorDAO tailorDAO;
	
	@Autowired
	public void setTailorDAO(ITailorDAO tailorDAO) {
		this.tailorDAO = tailorDAO;
	}
	
	@Transactional
	public void insertTailor(TbTailor tailor) {
		tailorDAO.insertTailor(tailor);
	}

}
