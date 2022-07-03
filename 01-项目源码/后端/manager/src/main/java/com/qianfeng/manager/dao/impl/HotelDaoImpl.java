package com.qianfeng.manager.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.qianfeng.manager.bean.RoomBean;
import com.qianfeng.manager.bean.ThemeHotelBean;
import com.qianfeng.manager.dao.IHotelDao;
@Component
public class HotelDaoImpl extends SqlSessionDaoSupport implements IHotelDao{
	
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public List<ThemeHotelBean> queryHotelListByType(Map<String, Object> params) {
		return this.getSqlSession().selectList("com.qianfeng.manager.bean.hotelMapper.queryHotelListByType",params); 
	}

	public int queryHotelCount(Integer hotelType) {
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.hotelMapper.queryHotelCount", hotelType);
	}

	public void updateHotel(ThemeHotelBean hotel) {
		this.getSqlSession().update("com.qianfeng.manager.bean.hotelMapper.updateHotel", hotel);
		
	}

	public ThemeHotelBean queryHotelById(Integer hotelId) {
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.hotelMapper.queryHotelById", hotelId);
	}

	public void deleteHotel(Integer hotelId) {
		this.getSqlSession().delete("com.qianfeng.manager.bean.hotelMapper.deleteHotelById", hotelId);	
	}

	public void insertHotel(ThemeHotelBean hotel) {
		this.getSqlSession().insert("com.qianfeng.manager.bean.hotelMapper.insertHotel", hotel);
	}

	public ThemeHotelBean getHotelInfo(Integer hotelId) {
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.hotelMapper.getHotelInfo", hotelId);
	}

	public void updateRoom(RoomBean room) {
		this.getSqlSession().update("com.qianfeng.manager.bean.TbRoomMapper.updateRoom", room);
	}

	public void deleteRoom(Integer room_id) {
		this.getSqlSession().update("com.qianfeng.manager.bean.TbRoomMapper.deleteRoom", room_id);
	}

	public void insertRoom(RoomBean room) {
		this.getSqlSession().insert("com.qianfeng.manager.bean.TbRoomMapper.insertRoom", room);
	}

}
