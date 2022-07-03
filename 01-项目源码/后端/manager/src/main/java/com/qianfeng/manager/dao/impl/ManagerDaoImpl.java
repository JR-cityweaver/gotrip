package com.qianfeng.manager.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.qianfeng.manager.bean.ManagerBean;
import com.qianfeng.manager.dao.IManagerDao;
@Component
public class ManagerDaoImpl extends SqlSessionDaoSupport implements IManagerDao{
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub.
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public ManagerBean getManager(ManagerBean manager) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.managerMapper.getManager", manager);
	}

	public List<String> getPermissionList(String mName) {
		return this.getSqlSession().selectList("com.qianfeng.manager.bean.permissionMapper.getPermissionListByName", mName);
		
	}

	public List<ManagerBean> getManagerList(Integer pageNo) {
		return this.getSqlSession().selectList("com.qianfeng.manager.bean.managerMapper.getManagerList",pageNo);
	}

	public int getManagerCount() {
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.managerMapper.getManagerCount");
	}

	public String getTotalPrice() {
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.TbRouteOrderMapper.getTotalPrice");
	}

	public String getHotelPrice() {
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.TbHotelOrderMapper.getHotelPrice");
	}

	public void deleteManager(Integer mId) {
		// TODO Auto-generated method stub
		this.getSqlSession().delete("com.qianfeng.manager.bean.managerMapper.deleteManager", mId);
	}

	public void insertManager(ManagerBean manager) {
		// TODO Auto-generated method stub
		this.getSqlSession().insert("com.qianfeng.manager.bean.managerMapper.insertManager", manager);
	}

}
