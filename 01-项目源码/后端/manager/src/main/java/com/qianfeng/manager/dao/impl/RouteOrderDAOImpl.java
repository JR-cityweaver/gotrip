package com.qianfeng.manager.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.qianfeng.manager.bean.ContactinfoBean;
import com.qianfeng.manager.bean.RouteOrderBean;
import com.qianfeng.manager.bean.TouristBean;
import com.qianfeng.manager.dao.IRouteOrderDAO;
@Component
public class RouteOrderDAOImpl extends SqlSessionDaoSupport implements IRouteOrderDAO{

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public int selectAllRouteOrderCount(String orderId) {
		
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.TbRouteOrderMapper.getRouteOrderCount", orderId);
	}

	public int selectTypeRouteOrderCount(String orderType) {
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.TbRouteOrderMapper.getRouteOrderTypeCount", orderType);
	}

	public List<RouteOrderBean> selectTypeRouteOrder(Map<String, Object> params) {
		return this.getSqlSession().selectList("com.qianfeng.manager.bean.TbRouteOrderMapper.getRouteOrderType",params);
	}

	public RouteOrderBean getAllRouteOrderById(Integer pageNo) {
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.TbRouteOrderMapper.getAllRouteOrderById", pageNo);
	}

	public RouteOrderBean selectRouteOrder(String orderNum) {
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.TbRouteOrderMapper.selectOrder",orderNum);
	}

	public ContactinfoBean selectContact(String orderNum) {
		return  this.getSqlSession().selectOne("com.qianfeng.manager.bean.ContactinfoMapper.selectContact",orderNum);
	}

	public TouristBean selectTourist(String orderNum) {
		return this.getSqlSession().selectOne("com.qianfeng.manager.bean.TouristMapper.selectTourist",orderNum);
	}

	public void deleteRouteOrder(String orderNum) {
		this.getSqlSession().delete("com.qianfeng.manager.bean.TbRouteOrderMapper.deleteRouteOrder", orderNum);
	}

}
