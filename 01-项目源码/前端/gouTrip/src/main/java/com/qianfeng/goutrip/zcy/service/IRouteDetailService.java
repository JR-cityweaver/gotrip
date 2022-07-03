package com.qianfeng.goutrip.zcy.service;

import java.util.List;

import com.qianfeng.goutrip.zcy.bean.RouteDetailDTO;

public interface IRouteDetailService {

	List<RouteDetailDTO> queryRouteDetail(Integer route_detail);
}
