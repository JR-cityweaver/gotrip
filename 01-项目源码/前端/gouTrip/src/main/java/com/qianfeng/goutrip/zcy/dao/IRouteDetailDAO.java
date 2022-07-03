package com.qianfeng.goutrip.zcy.dao;

import java.util.List;

import com.qianfeng.goutrip.zcy.bean.RouteDetailDTO;

public interface IRouteDetailDAO {
	
	List<RouteDetailDTO> queryRouteDetail(Integer route_detail);
}
