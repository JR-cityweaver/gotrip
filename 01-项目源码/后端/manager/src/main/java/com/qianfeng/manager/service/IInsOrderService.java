package com.qianfeng.manager.service;

import java.util.List;

import com.qianfeng.manager.bean.InsOrderBean;

public interface IInsOrderService {

	int selectInsCount(Integer ins_id);
	
	List<InsOrderBean> selectIns(Integer pageNo);
	
	void deleteInsOrder(Integer ins_id);
}
