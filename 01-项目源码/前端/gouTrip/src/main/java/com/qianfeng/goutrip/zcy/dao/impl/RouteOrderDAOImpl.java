package com.qianfeng.goutrip.zcy.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qianfeng.goutrip.zcy.bean.RouteOrderDTO;
import com.qianfeng.goutrip.zcy.dao.IRouteOrderDAO;

@Repository
public class RouteOrderDAOImpl extends SqlSessionDaoSupport implements IRouteOrderDAO {

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public void insertRouteOrder(RouteOrderDTO routeOrder) {
		this.getSqlSession().insert("com.qianfeng.goutrip.zcy.bean.RouteOrderMapper.insertOrder",routeOrder);

	}

	public void insertTourist(RouteOrderDTO routeOrder) {
		this.getSqlSession().insert("com.qianfeng.goutrip.zcy.bean.TouristMapper.insertTourist",routeOrder);
		
	}

	public void insertContactman(RouteOrderDTO routeOrder) {
		this.getSqlSession().insert("com.qianfeng.goutrip.zcy.bean.ContactinfoMapper.insertContactMan",routeOrder);
		
	}

	public RouteOrderDTO selectOrder(String order_num) {
		return this.getSqlSession().selectOne("com.qianfeng.goutrip.zcy.bean.RouteOrderMapper.selectOrder",order_num);
	}

	public void updateOrder(String order_num) {
		 this.getSqlSession().update("com.qianfeng.goutrip.zcy.bean.RouteOrderMapper.updateOrder",order_num);
		
	}

	public List<RouteOrderDTO> selectAllOrder(Integer pageno) {
		
		return this.getSqlSession().selectList("com.qianfeng.goutrip.zcy.bean.RouteOrderMapper.selectAllOrder",pageno);
	}

	public int countOrder() {
		
		return this.getSqlSession().selectOne("com.qianfeng.goutrip.zcy.bean.RouteOrderMapper.selectOrderCount");
	}

	public List<RouteOrderDTO> selectUnpay(Map<String,Object> map) {
		
		return this.getSqlSession().selectList("com.qianfeng.goutrip.zcy.bean.RouteOrderMapper.selectUnpay",map);
	}

	public List<RouteOrderDTO> selectIspay(Map<String,Object> map) {
		
		return this.getSqlSession().selectList("com.qianfeng.goutrip.zcy.bean.RouteOrderMapper.selectIspay",map);
	}

	public int selectCount(String order_type) {
		
		return this.getSqlSession().selectOne("com.qianfeng.goutrip.zcy.bean.RouteOrderMapper.selectUnpayCount",order_type);
	}

	public RouteOrderDTO selectContact(String order_num) {
		
		return this.getSqlSession().selectOne("com.qianfeng.goutrip.zcy.bean.ContactinfoMapper.selectContact",order_num);
	}



	public RouteOrderDTO selectTourist(String order_num) {
		
		return this.getSqlSession().selectOne("com.qianfeng.goutrip.zcy.bean.TouristMapper.selectTourist",order_num);
	}


	public int selectLimt(String order_begindate) {
		
		return this.getSqlSession().selectOne("com.qianfeng.goutrip.zcy.bean.RouteOrderMapper.selectLimit",order_begindate);
	}


	public void deleteUnPay(String order_num) {
		this.getSqlSession().update("com.qianfeng.goutrip.zcy.bean.RouteOrderMapper.deleteUnPay", order_num);
	}

	public void deleteUnTrip(String order_num) {
		this.getSqlSession().update("com.qianfeng.goutrip.zcy.bean.RouteOrderMapper.deleteUnTrip", order_num);	
	}


}
