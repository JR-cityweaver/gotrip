package com.qianfeng.manager.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.qianfeng.manager.bean.UserBean;
import com.qianfeng.manager.dao.IUserDao;
@Component
public class UserDaoImpl extends SqlSessionDaoSupport implements IUserDao{
	
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public List<UserBean> queryUserList(Integer pageNo) {
		return this.getSqlSession().selectList("com.qianfeng.manager.bean.userMapper.queryUserList",pageNo);
	}

	public int queryUserCount() {
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.userMapper.queryUserCount");
	}
	
}
