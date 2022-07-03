package com.qianfeng.goutrip.zcy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qianfeng.goutrip.zcy.bean.InsDTO;
import com.qianfeng.goutrip.zcy.dao.impl.InsDAOImpl;
import com.qianfeng.goutrip.zcy.service.IInsService;

@Service
public class IInsServiceImpl implements IInsService {

	private InsDAOImpl insDAO;
	
	@Autowired
	public void setInsDAO(InsDAOImpl insDAO) {
		this.insDAO = insDAO;
	}


	public void insertIns(InsDTO insDTO) {
	
		insDAO.insertIns(insDTO);
	}

}
