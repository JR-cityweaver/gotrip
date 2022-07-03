package com.qianfeng.manager.dao.impl;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.qianfeng.manager.bean.HotelOrderBean;
import com.qianfeng.manager.bean.TailorBean;
import com.qianfeng.manager.dao.IHotelOrderDAO;

@Component
public class HotelOrderDAOImpl extends SqlSessionDaoSupport implements IHotelOrderDAO{

	
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public HotelOrderBean getHotelOrderByNum(String hotelorder_number) {
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.TbHotelOrderMapper.getOrderByNum", hotelorder_number);
	}

	public List<HotelOrderBean> getHotelOrder(Integer pageNo) {
		return this.getSqlSession().selectList("com.qianfeng.manager.bean.TbHotelOrderMapper.getHotelOrder", pageNo);
	}

	public List<HotelOrderBean> getOrderByType(Map<String, Object> map) {
		return this.getSqlSession().selectList("com.qianfeng.manager.bean.TbHotelOrderMapper.getHotelOrderType",map);
	}

	public int typeCount(String hotelorder_type) {
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.TbHotelOrderMapper.getHotelOrderTypeCount", hotelorder_type);
	}


	public void deleteHotelOrder(Integer hotelorder_id) {
		this.getSqlSession().delete("com.qianfeng.manager.bean.TbHotelOrderMapper.deleteHotelOrder", hotelorder_id);
		
	}


	public List<TailorBean> getTailor(Integer pageNo) {
		return this.getSqlSession().selectList("com.qianfeng.manager.bean.TbTailorMapper.getTailor", pageNo);
	}

	public int tailorCount() {
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.TbTailorMapper.getTailorCount");
	}

	public TailorBean getTailorInfo(Integer tailor_id) {
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.TbTailorMapper.getTailorInfo", tailor_id);
	}

	public void deleteTailor(Integer tailor_id) {
		this.getSqlSession().update("com.qianfeng.manager.bean.TbTailorMapper.deleteTailor",tailor_id);
	}



	
}
