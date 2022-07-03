package com.qianfeng.manager.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.qianfeng.manager.bean.InsOrderBean;
import com.qianfeng.manager.dao.IInsOrderDAO;
@Component
public class InsOrderDAOImpl extends SqlSessionDaoSupport implements IInsOrderDAO{

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	

	public int selectInsCount(Integer ins_id) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.InsMapper.getInsCount", ins_id);
	}

	public List<InsOrderBean> selectIns(Integer pageNo) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectList("com.qianfeng.manager.bean.InsMapper.getIns", pageNo);
	}


	public void deleteInsOrder(Integer ins_id) {
		// TODO Auto-generated method stub
		this.getSqlSession().delete("com.qianfeng.manager.bean.InsMapper.deleteIns", ins_id);
	}

	
}
