package com.qianfeng.manager.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.qianfeng.manager.bean.ContactinfoBean;
import com.qianfeng.manager.bean.RouteOrderBean;
import com.qianfeng.manager.bean.TouristBean;
import com.qianfeng.manager.dao.IRouteOrderDAO;
import com.qianfeng.manager.service.IRouteOrderService;
@Transactional
@Component
public class RouteOrderServiceImpl implements IRouteOrderService{

	private IRouteOrderDAO routeOrderDAO;
	private final static int page_size=3;
	@Autowired
	public void setRouteOrderDAO(IRouteOrderDAO routeOrderDAO) {
		this.routeOrderDAO = routeOrderDAO;
	}

	public int selectAllRouteOrderCount(String orderId) {
		int count=routeOrderDAO.selectAllRouteOrderCount(orderId);
		int temp=count%page_size;
		int totalpage1;
		if(temp==0){
			totalpage1=count/page_size;
		}else{
			totalpage1=count/page_size + 1;
		}
		return totalpage1;
		
	}

	public int selectTypeRouteOrderCount(String orderType) {
		int count=routeOrderDAO.selectTypeRouteOrderCount(orderType);
		int temp=count%page_size;
		int totalpage;
		if(temp==0){
			totalpage=count/page_size;
		}else{
			totalpage=count/page_size + 1;
		}
		return totalpage;
	}

	public List<RouteOrderBean> selectTypeRouteOrder(Map<String, Object> params) {
		return routeOrderDAO.selectTypeRouteOrder(params);
	}

	public RouteOrderBean getAllRouteOrderById(Integer pageNo) {
		
		return routeOrderDAO.getAllRouteOrderById(pageNo);
	}

	public RouteOrderBean selectRouteOrder(String orderNum) {
		return routeOrderDAO.selectRouteOrder(orderNum);
	}

	public ContactinfoBean selectContact(String orderNum) {
		return routeOrderDAO.selectContact(orderNum);
	}

	public TouristBean selectTourist(String orderNum) {
		return routeOrderDAO.selectTourist(orderNum);
	}

	public void deleteRouteOrder(String orderNum) {
		routeOrderDAO.deleteRouteOrder(orderNum);
	}
	
}
