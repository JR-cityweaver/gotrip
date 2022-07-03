package com.qianfeng.goutrip.zcy.service;

import java.util.List;
import java.util.Map;

import com.qianfeng.goutrip.zcy.bean.RouteOrderDTO;

public interface IRouteOrderService {

	void insertRouteOrder(RouteOrderDTO routeOrder);
    
	void insertTourist(RouteOrderDTO routeOrder);
	
	void insertContactman(RouteOrderDTO routeOrder); 
	
	RouteOrderDTO selectOrder(String order_num);
	
	void updateOrder(String order_num);
	
	List<RouteOrderDTO> selectAllOrder(Integer pageno);
	
	int countOrder();
	

	List<RouteOrderDTO> selectUnpay(Map<String,Object> map);
	
	List<RouteOrderDTO> selectIspay(Map<String,Object> map);
	
	int selectCount(String order_type);
	
	RouteOrderDTO selectContact(String order_num);
	
	RouteOrderDTO selectTourist(String order_num);

	
	int selectLimt(String order_begindate);

	
	void deleteUnPay(String order_num);
	void deleteUnTrip(String order_num);
}
