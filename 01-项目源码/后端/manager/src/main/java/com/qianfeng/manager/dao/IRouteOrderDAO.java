package com.qianfeng.manager.dao;

import java.util.List;
import java.util.Map;

import com.qianfeng.manager.bean.ContactinfoBean;
import com.qianfeng.manager.bean.RouteOrderBean;
import com.qianfeng.manager.bean.TouristBean;

public interface IRouteOrderDAO {
	
	void deleteRouteOrder(String orderNum);

	int selectAllRouteOrderCount(String orderId);
	
	int selectTypeRouteOrderCount(String orderType);
	
	List<RouteOrderBean> selectTypeRouteOrder(Map<String, Object> params);
	
	RouteOrderBean getAllRouteOrderById(Integer pageNo);
	
	RouteOrderBean selectRouteOrder(String orderNum);
	
	ContactinfoBean selectContact(String orderNum);
	
	TouristBean selectTourist(String orderNum);
}
