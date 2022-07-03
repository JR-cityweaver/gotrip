package com.qianfeng.goutrip.zcy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qianfeng.goutrip.zcy.bean.CollectDTO;
import com.qianfeng.goutrip.zcy.dao.ICollectDAO;
import com.qianfeng.goutrip.zcy.service.ICollectService;
@Service
public class CollectServiceImpl implements ICollectService {

	private ICollectDAO collectDAO;
	
	@Autowired
	public void setCollect(ICollectDAO collectDAO) {
		this.collectDAO = collectDAO;
	}


	public void insertColl(CollectDTO collect) {
		collectDAO.insertColl(collect);
		}


	public void deleteColl(Integer collect_detail_id) {
		collectDAO.deleteColl(collect_detail_id);
		
	}


	public CollectDTO selectCollById(Integer collect_detail_id) {
		
		return collectDAO.selectCollById(collect_detail_id);
	}


	public List<CollectDTO> selectAll(Integer user_collect) {
		
		return collectDAO.selectAll(user_collect);
	}

}
