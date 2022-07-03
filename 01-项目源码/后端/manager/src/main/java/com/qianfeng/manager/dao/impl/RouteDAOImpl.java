package com.qianfeng.manager.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.qianfeng.manager.bean.RouteBean;
import com.qianfeng.manager.dao.IRouteDAO;
@Component
public class RouteDAOImpl extends SqlSessionDaoSupport implements IRouteDAO{

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	
	public void insertRoute(RouteBean routebean) {
		this.getSqlSession().insert("com.qianfeng.manager.bean.TbRouteMapper.insertRoute", routebean);
		
	}

	public void deleteRoute(Integer routeId) {
		this.getSqlSession().delete("com.qianfeng.manager.bean.TbRouteMapper.deleteRoute", routeId);
	}

	public void updateRoute(RouteBean routebean) {
		this.getSqlSession().update("com.qianfeng.manager.bean.TbRouteMapper.updateRoute", routebean);
		
	}

	
	public List<RouteBean> selectRoute(Map<String, Object> params) {
		return this.getSqlSession().selectList("com.qianfeng.manager.bean.TbRouteMapper.getRouteName",params);
	}

	public int selectRouteTypeCount(Integer routeType) {
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.TbRouteMapper.getRouteTypeCount",routeType);
	}


	public RouteBean selectAllRouteById(Integer routeId) {
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.TbRouteMapper.getAllRouteById", routeId);
	}

}
