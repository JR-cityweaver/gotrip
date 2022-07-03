package com.qianfeng.goutrip.fqy.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qianfeng.goutrip.fqy.bean.TbHotelOrder;
import com.qianfeng.goutrip.fqy.dao.IhotelOrderDAO;

@Repository
public class HotelOrderImpl extends SqlSessionDaoSupport implements IhotelOrderDAO {

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory){
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public void insertOrder(TbHotelOrder hotelOrder) {
		this.getSqlSession().insert("com.qianfeng.goutrip.fqy.bean.hotelOrderMapper.insertOrder", hotelOrder);
	}

	public TbHotelOrder getOrderByNum(String hotelorder_number) {
		return this.getSqlSession().selectOne("com.qianfeng.goutrip.fqy.bean.hotelOrderMapper.getOrderByNum", hotelorder_number);
	}

	public List<TbHotelOrder> getHotelOrder(Integer pageNo) {
		return this.getSqlSession().selectList("com.qianfeng.goutrip.fqy.bean.hotelOrderMapper.getHotelOrder", pageNo);
	}

	public int Count() {
		int count = this.getSqlSession().selectOne("com.qianfeng.goutrip.fqy.bean.hotelOrderMapper.getOrderCount");
		return count;
	}

	public List<TbHotelOrder> getOrderByType(HashMap<String, Object> map) {
		return this.getSqlSession().selectList("com.qianfeng.goutrip.fqy.bean.hotelOrderMapper.getOrderByType", map);
	}

	public int typeCount(String hotelorder_type) {
		return this.getSqlSession().selectOne("com.qianfeng.goutrip.fqy.bean.hotelOrderMapper.getOrderTypeCount", hotelorder_type);
	}

	public void updateType(String hotelorder_number) {
		this.getSqlSession().update("com.qianfeng.goutrip.fqy.bean.hotelOrderMapper.updateType", hotelorder_number);
	}

	public void deleteNoPay(Integer hotelorder_id) {
		this.getSqlSession().update("com.qianfeng.goutrip.fqy.bean.hotelOrderMapper.deleteNoPay", hotelorder_id);
	}

}
