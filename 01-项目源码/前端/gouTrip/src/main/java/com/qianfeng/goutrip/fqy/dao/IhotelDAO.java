package com.qianfeng.goutrip.fqy.dao;

import java.util.List;
import java.util.Map;

import com.qianfeng.goutrip.fqy.bean.TbHotel;

public interface IhotelDAO {
	List<TbHotel> getTypeHotel(Map<String,Object> map);
	List<TbHotel> getAllHotel(Integer pageNo);
	int typeCount(Integer hotel_type);
	int totalCount();
	List<TbHotel> getHotelList();
	List<TbHotel> getSHHotelByLike();
	List<TbHotel> getHZHotelByLike();
	List<TbHotel> getSYHotelByLike();
	List<TbHotel> getXMHotelByLike();
	List<TbHotel> getSZHotelByLike();
	List<TbHotel> getHotelBySearch(String city);
//	List<TbRoom> getRoomByHotel(Integer hotel_id);
	TbHotel getHotelInfo(Integer hotel_id);
	//?????
}
