package com.qianfeng.goutrip.fqy.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.qianfeng.goutrip.fqy.bean.TbHotel;
import com.qianfeng.goutrip.fqy.dao.IhotelDAO;
import com.qianfeng.goutrip.fqy.service.IHotelService;

@Component
public class HotelServiceImpl implements IHotelService {

	private IhotelDAO hotelDAO;
	//????
	@Autowired
	public void setHotelDAO(IhotelDAO hotelDAO) {
		this.hotelDAO = hotelDAO;
	}

	public List<TbHotel> getTypeHotel(Map<String, Object> map) {
		List<TbHotel> hotelList = hotelDAO.getTypeHotel(map);
		return hotelList;
	}
	
	public List<TbHotel> getAllHotel(Integer pageNo) {
		return hotelDAO.getAllHotel(pageNo);
	}
	
	public int totalCount() {
		int totalCount = hotelDAO.totalCount();
		int num = 0;
		if(totalCount%HOTEL_LIST_SIZE == 0){
			num = totalCount/HOTEL_LIST_SIZE;
		}else{
			num = totalCount/HOTEL_LIST_SIZE+1;
		}
		return num;
	}
	public int typeCount(Integer hotel_type) {
		int typeCount = hotelDAO.typeCount(hotel_type);
		int num1 = 0;
		if(typeCount%HOTEL_LIST_SIZE == 0){
			num1 = typeCount/HOTEL_LIST_SIZE;
		}else{
			num1 = typeCount/HOTEL_LIST_SIZE+1;
		}
		return num1;
	}

	//获得酒店列表
	public List<TbHotel> getHotelList() {
		List<TbHotel> hotelList = hotelDAO.getHotelList();
		return hotelList;
	}
	
	//特色酒店
	public List<TbHotel> getSHHotelByLike() {
		return hotelDAO.getSHHotelByLike();
	}
	public List<TbHotel> getHZHotelByLike() {
		return hotelDAO.getHZHotelByLike();
	}
	public List<TbHotel> getSYHotelByLike() {
		return hotelDAO.getSYHotelByLike();
	}
	public List<TbHotel> getXMHotelByLike() {
		return hotelDAO.getXMHotelByLike();
	}
	public List<TbHotel> getSZHotelByLike() {
		return hotelDAO.getSZHotelByLike();
	}
	//首页搜索酒店
	public List<TbHotel> getHotelBySearch(String city) {
		return hotelDAO.getHotelBySearch(city);
	}
	//通过酒店ID获得房间信息
//	public List<TbRoom> getRoomByHotel(Integer hotel_id) {
//		return hotelDAO.getRoomByHotel(hotel_id);
//	}
	//获得酒店的详细信息
	public TbHotel getHotelInfo(Integer hotel_id) {
		return hotelDAO.getHotelInfo(hotel_id);
	}

}
