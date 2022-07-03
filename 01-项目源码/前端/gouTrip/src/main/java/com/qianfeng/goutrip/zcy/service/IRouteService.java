package com.qianfeng.goutrip.zcy.service;

import java.util.List;
import java.util.Map;

import com.qianfeng.goutrip.zcy.bean.RouteDTO;
import com.qianfeng.goutrip.zcy.dao.IRouteDAO;

public interface IRouteService {

	int queryCount();
	
	int queryThemeCount(Integer route_themetype);
	
	List<RouteDTO> queryRouteByTheme(Map<String,Object> map);
	
	List<RouteDTO> queryAllRoute(Integer pageno);
	
	List<RouteDTO> queryRouteByCountry(String country);
	
	//根据热门查询
	List<RouteDTO> queryRouteByHot(Integer pageno);
	
	//根据天数查询
	List<RouteDTO> queryRouteByDays(Integer pageno);
		
	//根据价格查询
	List<RouteDTO> queryRouteByPrice(Integer pageno);
	
	List<RouteDTO> queryRouteByDaysAsc(Integer pageno);
	
	List<RouteDTO> queryRouteByPriceAsc(Integer pageno);
	
	List<RouteDTO> queryRouteByTeam(Map<String,Object> map);
	
	int queryTeamCount(Integer tb_way);
}
