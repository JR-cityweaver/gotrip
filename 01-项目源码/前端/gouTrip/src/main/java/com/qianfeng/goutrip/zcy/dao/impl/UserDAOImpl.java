package com.qianfeng.goutrip.zcy.dao.impl;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qianfeng.goutrip.zcy.bean.UserDTO;
import com.qianfeng.goutrip.zcy.dao.IUserDAO;

@Repository
public class UserDAOImpl extends SqlSessionDaoSupport implements IUserDAO {
	
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public UserDTO loginByUser(UserDTO userDTO) {
		
		return this.getSqlSession().selectOne("com.qianfeng.goutrip.zcy.bean.UserMapper.login",userDTO);
	}

	public void updateInfo(UserDTO userDTO) {
		this.getSqlSession().update("com.qianfeng.goutrip.zcy.bean.UserMapper.updateInfo",userDTO);
		
	}

	public UserDTO selectInfo(Integer user_id) {
		
		return this.getSqlSession().selectOne("com.qianfeng.goutrip.zcy.bean.UserMapper.selectInfo",user_id);
	}

}
