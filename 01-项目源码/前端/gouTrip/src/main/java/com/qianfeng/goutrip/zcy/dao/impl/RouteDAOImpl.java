package com.qianfeng.goutrip.zcy.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qianfeng.goutrip.zcy.bean.RouteDTO;
import com.qianfeng.goutrip.zcy.dao.IRouteDAO;

@Repository
public class RouteDAOImpl extends SqlSessionDaoSupport implements IRouteDAO {

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public int queryCount() {
		return 	this.getSqlSession().selectOne("com.qianfeng.goutrip.zcy.bean.RouteMapper.selectCount");
		
	}

	public List<RouteDTO> queryAllRoute(Integer pageno) {
		
		return this.getSqlSession().selectList("com.qianfeng.goutrip.zcy.bean.RouteMapper.selectAllRoute",pageno);
	}

	public List<RouteDTO> queryRouteByTheme(Map<String,Object> map) {
		return this.getSqlSession().selectList("com.qianfeng.goutrip.zcy.bean.RouteMapper.selectRouteByTheme",map);
	}

	public List<RouteDTO> queryRouteByCountry(String country) {
		
		return this.getSqlSession().selectList("com.qianfeng.goutrip.zcy.bean.RouteMapper.selectRouteByCountry",country);
	}

	public int queryThemeCount(Integer route_themetype) {
		
		return this.getSqlSession().selectOne("com.qianfeng.goutrip.zcy.bean.RouteMapper.selectThemeCount",route_themetype);
	}

	public List<RouteDTO> queryRouteByHot(Integer pageno) {
		
		return this.getSqlSession().selectList("com.qianfeng.goutrip.zcy.bean.RouteMapper.selectRouteByHot",pageno);
	}

	public List<RouteDTO> queryRouteByDays(Integer pageno) {
		
		return this.getSqlSession().selectList("com.qianfeng.goutrip.zcy.bean.RouteMapper.selectRouteByDays",pageno);
	}

	public List<RouteDTO> queryRouteByPrice(Integer pageno) {
		
		return this.getSqlSession().selectList("com.qianfeng.goutrip.zcy.bean.RouteMapper.selectRouteByPrice",pageno);
	}

	public List<RouteDTO> queryRouteByDaysAsc(Integer pageno) {
		
		return this.getSqlSession().selectList("com.qianfeng.goutrip.zcy.bean.RouteMapper.selectRouteByDaysAsc",pageno);
	}

	public List<RouteDTO> queryRouteByPriceAsc(Integer pageno) {
		
		return this.getSqlSession().selectList("com.qianfeng.goutrip.zcy.bean.RouteMapper.selectRouteByPriceAsc",pageno);
	}

	public List<RouteDTO> queryRouteByTeam(Map<String,Object> map) {
		
		return this.getSqlSession().selectList("com.qianfeng.goutrip.zcy.bean.RouteMapper.selectRouteByTeam",map);
	}

	public int queryTeamCount(Integer tb_way) {
		
		return this.getSqlSession().selectOne("com.qianfeng.goutrip.zcy.bean.RouteMapper.selectTeamCount",tb_way);
	}

	

}
