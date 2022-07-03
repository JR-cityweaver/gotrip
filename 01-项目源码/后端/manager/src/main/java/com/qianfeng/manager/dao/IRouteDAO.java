package com.qianfeng.manager.dao;

import java.util.List;
import java.util.Map;

import com.qianfeng.manager.bean.RouteBean;

public interface IRouteDAO {

	void insertRoute(RouteBean routebean);
	
	void deleteRoute(Integer routeId);
	
	void updateRoute(RouteBean routebean);
	
	List<RouteBean> selectRoute(Map<String, Object> params);
	
	int selectRouteTypeCount(Integer routeType);
	
	RouteBean selectAllRouteById(Integer routeId);
}
