package com.qianfeng.manager.service.impl;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.qianfeng.manager.bean.RouteBean;
import com.qianfeng.manager.dao.IRouteDAO;
import com.qianfeng.manager.service.IRouteService;
@Transactional
@Repository
public class RouteServiceImpl implements IRouteService{

	private IRouteDAO routeDAO;
	private final static int page_size=3;
	@Autowired
	public void setRouteDAO(IRouteDAO routeDAO) {
		this.routeDAO = routeDAO;
	}

	public void insertRoute(RouteBean routebean) {
		routeDAO.insertRoute(routebean);
	}

	public void deleteRoute(Integer routeId) {
		routeDAO.deleteRoute(routeId);
	}

	public void updateRoute(RouteBean routebean) {
		routeDAO.updateRoute(routebean);
	}
	
	
	public List<RouteBean> selectRoute(Map<String, Object> params) {
		return routeDAO.selectRoute(params);
	}

	public int selectRouteTypeCount(Integer routeType) {
		int count=routeDAO.selectRouteTypeCount(routeType);
		int temp=count%page_size;
		int totalpage;
		if(temp==0){
			totalpage=count/page_size;
		}else{
			totalpage=count/page_size + 1;
		}
		return totalpage;
	}

	public RouteBean selectAllRouteById(Integer routeId) {
		return routeDAO.selectAllRouteById(routeId);
	}

}
