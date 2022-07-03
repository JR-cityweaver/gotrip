package com.qianfeng.goutrip.fqy.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qianfeng.goutrip.fqy.bean.TbHotel;
import com.qianfeng.goutrip.fqy.dao.IhotelDAO;

@Repository
public class HotelDAOImpl extends SqlSessionDaoSupport implements IhotelDAO {
	//?
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory){
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	//获得单个类型的所有酒店?
	public List<TbHotel> getTypeHotel(Map<String, Object> map) {
		return this.getSqlSession().selectList("com.qianfeng.goutrip.fqy.bean.hotelListMapper.getHotelByType", map);
	}
	//获得所有酒店
	public List<TbHotel> getAllHotel(Integer pageNo) {
		return this.getSqlSession().selectList("com.qianfeng.goutrip.fqy.bean.hotelListMapper.getAllHotel", pageNo);
	}
	//获得总的酒店数
	public int totalCount(){
		List<TbHotel> hotelList = this.getSqlSession().selectList("com.qianfeng.goutrip.fqy.bean.hotelListMapper.getTotalCount");
		int totalCount = hotelList.size();
		return totalCount;
	}
	//获得单个类型的所有酒店数
	public int typeCount(Integer hotel_type) {
		List<TbHotel> hotellist = this.getSqlSession().selectList("com.qianfeng.goutrip.fqy.bean.hotelListMapper.getTypeCount",hotel_type);
		int typeCount = hotellist.size();
		return typeCount;
	}

	public List<TbHotel> getHotelList() {
		List<TbHotel> hotelList = this.getSqlSession().selectList("com.qianfeng.goutrip.fqy.bean.hotelListMapper.getTypeHotel");
		return hotelList;
	}

	public List<TbHotel> getSHHotelByLike() {
		return this.getSqlSession().selectList("com.qianfeng.goutrip.fqy.bean.hotelListMapper.getSHHotelByLike");
	}
	public List<TbHotel> getHZHotelByLike() {
		return this.getSqlSession().selectList("com.qianfeng.goutrip.fqy.bean.hotelListMapper.getHZHotelByLike");
	}
	public List<TbHotel> getSYHotelByLike() {
		return this.getSqlSession().selectList("com.qianfeng.goutrip.fqy.bean.hotelListMapper.getSYHotelByLike");
	}
	public List<TbHotel> getXMHotelByLike() {
		return this.getSqlSession().selectList("com.qianfeng.goutrip.fqy.bean.hotelListMapper.getXMHotelByLike");
	}
	public List<TbHotel> getSZHotelByLike() {
		return this.getSqlSession().selectList("com.qianfeng.goutrip.fqy.bean.hotelListMapper.getSZHotelByLike");
	}

	public List<TbHotel> getHotelBySearch(String city) {
		return this.getSqlSession().selectList("com.qianfeng.goutrip.fqy.bean.hotelListMapper.getHotelBySearch", city);
	}

//	public List<TbRoom> getRoomByHotel(Integer hotel_id) {
//		return this.getSqlSession().selectList("com.qianfeng.goutrip.fqy.bean.hotelListMapper.getRoomByHotel", hotel_id);
//	}
	
	public TbHotel getHotelInfo(Integer hotel_id) {
		return this.getSqlSession().selectOne("com.qianfeng.goutrip.fqy.bean.hotelListMapper.getHotelInfo", hotel_id);
	}
}
