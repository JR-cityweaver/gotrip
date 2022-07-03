package com.qianfeng.goutrip.fqy.service;

import java.util.HashMap;
import java.util.List;

import com.qianfeng.goutrip.fqy.bean.TbHotelOrder;

public interface IHotelOrderService {
	
	void insertOrder(TbHotelOrder hotelOrder);
	TbHotelOrder getOrderByNum(String hotelorder_number);
	List<TbHotelOrder> getHotelOrder(Integer pageNo);
	int Count();
	final static int ORDER_SIZE=4;
	List<TbHotelOrder> getOrderByType(HashMap<String, Object> map);
	int typeCount(String hotelorder_type);
	void updateType(String hotelorder_number);
	void deleteNoPay(Integer hotelorder_id);
}
