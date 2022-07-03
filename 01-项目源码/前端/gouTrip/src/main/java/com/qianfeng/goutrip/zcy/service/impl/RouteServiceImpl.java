package com.qianfeng.goutrip.zcy.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qianfeng.goutrip.zcy.bean.RouteDTO;
import com.qianfeng.goutrip.zcy.dao.IRouteDAO;
import com.qianfeng.goutrip.zcy.service.IRouteService;
@Service
public class RouteServiceImpl implements IRouteService {

	private static final Integer PAGE_SIZE=6;
	private IRouteDAO routeDAO;
	
	@Autowired
	public void setRouteDAO(IRouteDAO routeDAO) {
		this.routeDAO = routeDAO;
	}


	public List<RouteDTO> queryAllRoute(Integer pageno) {
		if(pageno==null||pageno<1){
			pageno=1;
		}
		pageno=(pageno-1)*PAGE_SIZE;
		List<RouteDTO> routeList=routeDAO.queryAllRoute(pageno);
		return routeList;
	}

	public int queryCount() {
		int size=routeDAO.queryCount();
		int totalPage=0;
		int temp=size%PAGE_SIZE;
		if(temp==0){
			totalPage=size/PAGE_SIZE;
		}else{
			totalPage=size/PAGE_SIZE+1;
		}
		return totalPage;
	}


	public List<RouteDTO> queryRouteByTheme(Map<String,Object> map) {
		
		return routeDAO.queryRouteByTheme(map);
	}


	public List<RouteDTO> queryRouteByCountry(String country) {
		
		return routeDAO.queryRouteByCountry(country);
	}


	public int queryThemeCount(Integer route_themetype) {
		int size=routeDAO.queryThemeCount(route_themetype);
		int temp=size%PAGE_SIZE;
		int totalPage=0;
		if(temp==0){
			totalPage=size/PAGE_SIZE;
		}else{
			totalPage=size/PAGE_SIZE+1;
		}
		return totalPage;
	}


	public List<RouteDTO> queryRouteByHot(Integer pageno) {
		if(pageno==null||pageno<1){
			pageno=1;
		}
		pageno=(pageno-1)*PAGE_SIZE;
		return routeDAO.queryRouteByHot(pageno);
	}


	public List<RouteDTO> queryRouteByDays(Integer pageno) {
		if(pageno==null||pageno<1){
			pageno=1;
		}
		pageno=(pageno-1)*PAGE_SIZE;
		return routeDAO.queryRouteByDays(pageno);
	}


	public List<RouteDTO> queryRouteByPrice(Integer pageno) {
		if(pageno==null||pageno<1){
			pageno=1;
		}
		pageno=(pageno-1)*PAGE_SIZE;
		return routeDAO.queryRouteByPrice(pageno);
	}


	public List<RouteDTO> queryRouteByDaysAsc(Integer pageno) {
		if(pageno==null||pageno<1){
			pageno=1;
		}
		pageno=(pageno-1)*PAGE_SIZE;
		return routeDAO.queryRouteByDaysAsc(pageno);
	}


	public List<RouteDTO> queryRouteByPriceAsc(Integer pageno) {
		if(pageno==null||pageno<1){
			pageno=1;
		}
		pageno=(pageno-1)*PAGE_SIZE;
		return routeDAO.queryRouteByPriceAsc(pageno);
	}


	public List<RouteDTO> queryRouteByTeam(Map<String,Object> map) {
		
		return routeDAO.queryRouteByTeam(map);
	}


	public int queryTeamCount(Integer tb_way) {
		int size=routeDAO.queryTeamCount(tb_way);
		int totalPage=0;
		int temp=size%PAGE_SIZE;
		if(temp==0){
			totalPage=size/PAGE_SIZE;
		}else{
			totalPage=size/PAGE_SIZE+1;
		}
		return totalPage;
	}

}
