package com.qianfeng.goutrip.fqy.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qianfeng.goutrip.fqy.bean.TbHotelOrder;
import com.qianfeng.goutrip.fqy.dao.IhotelOrderDAO;
import com.qianfeng.goutrip.fqy.service.IHotelOrderService;

@Service
@Transactional
public class HotelOrderServiceImpl implements IHotelOrderService{
	
	private IhotelOrderDAO orderDAO;
	
	@Autowired
	public void setOrderDAO(IhotelOrderDAO orderDAO) {
		this.orderDAO = orderDAO;
	}

	public void insertOrder(TbHotelOrder hotelOrder) {
		orderDAO.insertOrder(hotelOrder);
	}

	public TbHotelOrder getOrderByNum(String hotelorder_number) {
		return orderDAO.getOrderByNum(hotelorder_number);
	}

	public List<TbHotelOrder> getHotelOrder(Integer pageNo) {
		return orderDAO.getHotelOrder(pageNo);
	}

	public int Count() {
		int count = orderDAO.Count();
		
		return count;
	}

	public List<TbHotelOrder> getOrderByType(HashMap<String, Object> map) {
		return orderDAO.getOrderByType(map);
	}

	public int typeCount(String hotelorder_type) {
		return orderDAO.typeCount(hotelorder_type);
	}

	public void updateType(String hotelorder_number) {
		orderDAO.updateType(hotelorder_number);
	}

	public void deleteNoPay(Integer hotelorder_id) {
		orderDAO.deleteNoPay(hotelorder_id);
	}

}
