package com.qianfeng.manager.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.qianfeng.manager.bean.RoomBean;
import com.qianfeng.manager.bean.ThemeHotelBean;
import com.qianfeng.manager.dao.IHotelDao;
import com.qianfeng.manager.service.IHotelService;
@Component
@Transactional
public class HotelServiceImpl implements IHotelService{
	private IHotelDao hotelDao;
	private	static final int PAGE_SIZE = 5;
	@Autowired
	public void setHotelDao(IHotelDao hotelDao) {
		this.hotelDao = hotelDao;
	}

	public List<ThemeHotelBean> queryHotelListByType(Map<String, Object> params) {
		return hotelDao.queryHotelListByType(params);
	}

	public int queryHotelCount(Integer hotelType) {
		int count = hotelDao.queryHotelCount(hotelType);
		int totalPageNo;
		if(count%PAGE_SIZE == 0){
			totalPageNo = count/PAGE_SIZE;
		}else{
			totalPageNo = count/PAGE_SIZE+1;
		}
		return totalPageNo;
	}

	public void updateHotel(ThemeHotelBean hotel) {
		hotelDao.updateHotel(hotel);
	}

	public ThemeHotelBean queryHotelById(Integer hotelId) {
		return hotelDao.queryHotelById(hotelId);
	}

	public void deleteHotel(Integer hotelId) {
		hotelDao.deleteHotel(hotelId);
		
	}

	public void insertHotel(ThemeHotelBean hotel) {
		hotelDao.insertHotel(hotel);
	}

	public ThemeHotelBean getHotelInfo(Integer hotelId) {
		return hotelDao.getHotelInfo(hotelId);
	}

	public void updateRoom(RoomBean room) {
		hotelDao.updateRoom(room);
	}

	public void deleteRoom(Integer room_id) {
		hotelDao.deleteRoom(room_id);
	}

	public void insertRoom(RoomBean room) {
		hotelDao.insertRoom(room);
	}

}
