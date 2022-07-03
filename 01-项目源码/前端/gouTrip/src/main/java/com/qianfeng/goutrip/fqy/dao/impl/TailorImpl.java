package com.qianfeng.goutrip.fqy.dao.impl;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qianfeng.goutrip.fqy.bean.TbTailor;
import com.qianfeng.goutrip.fqy.dao.ITailorDAO;

@Repository
public class TailorImpl extends SqlSessionDaoSupport implements ITailorDAO {

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory){
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public void insertTailor(TbTailor tailor) {
		this.getSqlSession().insert("com.qianfeng.goutrip.fqy.bean.TbTailorMapper.insertTailor",tailor);
	}

}
