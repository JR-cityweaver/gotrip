package com.qianfeng.manager.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.qianfeng.manager.bean.InsOrderBean;
import com.qianfeng.manager.dao.IInsOrderDAO;
import com.qianfeng.manager.service.IInsOrderService;
@Transactional
@Component
public class InsOrderServiceImpl implements IInsOrderService{

	private IInsOrderDAO insOrderDAO;
	private final static int page_size=3;
	@Autowired
	public void setInsOrderDAO(IInsOrderDAO insOrderDAO) {
		this.insOrderDAO = insOrderDAO;
	}

	public int selectInsCount(Integer ins_id) {
		int count=insOrderDAO.selectInsCount(ins_id);
		int temp=count%page_size;
		int totalpage;
		if(temp==0){
			totalpage=count/page_size;
		}else{
			totalpage=count/page_size+1;
		}
		return totalpage;
	}

	public List<InsOrderBean> selectIns(Integer pageNo) {
		// TODO Auto-generated method stub
		return insOrderDAO.selectIns(pageNo);
	}

	public void deleteInsOrder(Integer ins_id) {
		// TODO Auto-generated method stub
		insOrderDAO.deleteInsOrder(ins_id);
	}

}
