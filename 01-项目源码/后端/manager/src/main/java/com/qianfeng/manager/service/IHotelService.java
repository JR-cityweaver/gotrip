package com.qianfeng.manager.service;

import java.util.List;
import java.util.Map;

import com.qianfeng.manager.bean.RoomBean;
import com.qianfeng.manager.bean.ThemeHotelBean;

public interface IHotelService {
	List<ThemeHotelBean> queryHotelListByType(Map<String, Object> params);
	int queryHotelCount(Integer hotelType);
	void updateHotel(ThemeHotelBean hotel);
	ThemeHotelBean queryHotelById(Integer hotelId);
	void deleteHotel(Integer hotelId);
	void insertHotel(ThemeHotelBean hotel);
	ThemeHotelBean getHotelInfo(Integer hotelId);
	void updateRoom(RoomBean room);
	void deleteRoom(Integer room_id);
	void insertRoom(RoomBean room);
}
