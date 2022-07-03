package com.qianfeng.goutrip.fqy.dao.impl;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qianfeng.goutrip.fqy.bean.TbUser;
import com.qianfeng.goutrip.fqy.dao.IUserDAO;

@Repository
public class UserDAOimpl extends SqlSessionDaoSupport implements IUserDAO {
	//?
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory){
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public void registerUser(TbUser user) {
		this.getSqlSession().insert("com.qianfeng.goutrip.fqy.bean.TbUserMapper.registerUser",user);
	}

	public void updatePW(TbUser user) {
		this.getSqlSession().update("com.qianfeng.goutrip.fqy.bean.TbUserMapper.updatePW", user);
	}

}
