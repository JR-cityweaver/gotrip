package com.qianfeng.manager.dao;

import java.util.List;

import com.qianfeng.manager.bean.InsOrderBean;

public interface IInsOrderDAO {

	int selectInsCount(Integer ins_id);
	
	List<InsOrderBean> selectIns(Integer pageNo);
	
	void deleteInsOrder(Integer ins_id);
}
