package com.qianfeng.goutrip.zcy.dao.impl;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qianfeng.goutrip.zcy.bean.InsDTO;
import com.qianfeng.goutrip.zcy.dao.IInsDAO;

@Repository
public class InsDAOImpl extends SqlSessionDaoSupport implements IInsDAO {

	
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {	
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public void insertIns(InsDTO insDTO) {
		this.getSqlSession().insert("com.qianfeng.goutrip.zcy.bean.InsMapper.insertIns",insDTO);
	}

}
