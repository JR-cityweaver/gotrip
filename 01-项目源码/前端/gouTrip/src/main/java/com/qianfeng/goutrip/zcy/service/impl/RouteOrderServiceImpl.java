package com.qianfeng.goutrip.zcy.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qianfeng.goutrip.zcy.bean.RouteOrderDTO;
import com.qianfeng.goutrip.zcy.dao.IRouteOrderDAO;
import com.qianfeng.goutrip.zcy.service.IRouteOrderService;

@Service
@Transactional
public class RouteOrderServiceImpl implements IRouteOrderService {
	private static final Integer PAGE_SIZE=4;
	private IRouteOrderDAO routeOrderDAO;
	
	@Autowired
	public void setRouteOrderDAO(IRouteOrderDAO routeOrderDAO) {
		this.routeOrderDAO = routeOrderDAO;
	}

	public void insertRouteOrder(RouteOrderDTO routeOrder) {
		routeOrderDAO.insertRouteOrder(routeOrder);

	}

	public void insertTourist(RouteOrderDTO routeOrder) {
		routeOrderDAO.insertTourist(routeOrder);
		
	}

	public void insertContactman(RouteOrderDTO routeOrder) {
		routeOrderDAO.insertContactman(routeOrder);
		
	}

	public RouteOrderDTO selectOrder(String order_num) {
		return routeOrderDAO.selectOrder(order_num);
	}

	public void updateOrder(String order_num) {
		routeOrderDAO.updateOrder(order_num);
		
	}

	public List<RouteOrderDTO> selectAllOrder(Integer pageno) {
		if(pageno==null||pageno<1){
			pageno=1;
		}
		pageno=(pageno-1)*PAGE_SIZE;		
		return routeOrderDAO.selectAllOrder(pageno);
	}

	public int countOrder() {
		int totalPage=0;
		int size=routeOrderDAO.countOrder();
		int temp=size%PAGE_SIZE;
		if(temp==0){
			totalPage=size/PAGE_SIZE;
		}else{
			totalPage=size/PAGE_SIZE+1;
		}
		return totalPage;
	}

	public List<RouteOrderDTO> selectUnpay(Map<String,Object> map) {
		
		return routeOrderDAO.selectUnpay(map);
	}

	public List<RouteOrderDTO> selectIspay(Map<String,Object> map) {
		
		return routeOrderDAO.selectIspay(map);
	}

	public int selectCount(String order_type) {
		int size=routeOrderDAO.selectCount(order_type);
		int totalPage=0;
		int temp=size%PAGE_SIZE;
		if(temp==0){
			totalPage=size/PAGE_SIZE;
		}else{
			totalPage=size/PAGE_SIZE;
		}
		return totalPage;
	}

	public RouteOrderDTO selectContact(String order_num) {
		
		return routeOrderDAO.selectContact(order_num);
	}

	public RouteOrderDTO selectTourist(String order_num) {		
		return routeOrderDAO.selectTourist(order_num);
	}


	public int selectLimt(String order_begindate) {
		
		return routeOrderDAO.selectLimt(order_begindate);
	}


	public void deleteUnPay(String order_num) {
		routeOrderDAO.deleteUnPay(order_num);
	}

	public void deleteUnTrip(String order_num) {
		routeOrderDAO.deleteUnTrip(order_num);
	}


}
