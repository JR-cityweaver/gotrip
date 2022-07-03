package com.qianfeng.manager.service;


import java.util.List;
import java.util.Map;

import com.qianfeng.manager.bean.HotelOrderBean;
import com.qianfeng.manager.bean.TailorBean;

public interface IHotelOrderService {

	HotelOrderBean getHotelOrderByNum(String hotelorder_number);
	
	List<HotelOrderBean> getHotelOrder(Integer pageNo);
	
	List<HotelOrderBean> getOrderByType(Map<String, Object> map);
	
	int typeCount(String hotelorder_type);

	
	void deleteHotelOrder(Integer hotelorder_id);

	
	List<TailorBean> getTailor(Integer pageNo);
	int tailorCount();
	TailorBean getTailorInfo(Integer tailor_id);
	void deleteTailor(Integer tailor_id);
}
