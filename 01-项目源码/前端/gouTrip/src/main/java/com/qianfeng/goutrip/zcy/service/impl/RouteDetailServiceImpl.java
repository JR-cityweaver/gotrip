package com.qianfeng.goutrip.zcy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qianfeng.goutrip.zcy.bean.RouteDetailDTO;
import com.qianfeng.goutrip.zcy.dao.IRouteDetailDAO;
import com.qianfeng.goutrip.zcy.service.IRouteDetailService;

@Service
public class RouteDetailServiceImpl implements IRouteDetailService {

	private IRouteDetailDAO routeDetailDAO;
	
	@Autowired
	public void setRouteDetailDAO(IRouteDetailDAO routeDetailDAO) {
		this.routeDetailDAO = routeDetailDAO;
	}


	public List<RouteDetailDTO> queryRouteDetail(Integer route_detail) {
		
		return routeDetailDAO.queryRouteDetail(route_detail);
	}

}
