package com.qianfeng.goutrip.zcy.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qianfeng.goutrip.zcy.bean.RouteDetailDTO;
import com.qianfeng.goutrip.zcy.dao.IRouteDetailDAO;

@Repository
public class RouteDetailDAOImpl extends SqlSessionDaoSupport implements IRouteDetailDAO {

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {		
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public List<RouteDetailDTO> queryRouteDetail(Integer route_detail) {
		
		return this.getSqlSession().selectList("com.qianfeng.goutrip.zcy.bean.RouteDetailMapper.selectRouteDetail",route_detail);
	}

}
