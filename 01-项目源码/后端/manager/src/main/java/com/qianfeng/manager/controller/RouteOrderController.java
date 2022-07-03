package com.qianfeng.manager.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qianfeng.manager.bean.ContactinfoBean;
import com.qianfeng.manager.bean.RouteOrderBean;
import com.qianfeng.manager.bean.TouristBean;
import com.qianfeng.manager.service.IRouteOrderService;

@Controller
@RequestMapping("/routeorder")
public class RouteOrderController {
	private final static int page_size=3;
	private IRouteOrderService routeOrderService;
	@Autowired
	public void setRouteOrderService(IRouteOrderService routeOrderService) {
		this.routeOrderService = routeOrderService;
	}
	
	@RequestMapping("/index.do")
	public String selectList(@RequestParam(required=false) Integer pageNo,Model model,String orderType,String type){
		if(pageNo==null){
			pageNo=1;
		}
		model.addAttribute("pageNo", pageNo);
		pageNo=(pageNo-1) * page_size;
		Map<String, Object> params = new HashMap<String, Object>(2);
		params.put("pageNo", pageNo);
		params.put("orderType", orderType);
		List<RouteOrderBean> routeOrderList=routeOrderService.selectTypeRouteOrder(params);
		int totalpage=routeOrderService.selectTypeRouteOrderCount(orderType);
		model.addAttribute("routeOrderList", routeOrderList);
		model.addAttribute("orderType", orderType);
		model.addAttribute("type", type);
		model.addAttribute("count", totalpage);
		return "../routeorder.jsp";
	}
	
	@RequestMapping("/selectOrder.do")
	public String selectOrder(String orderNum,Model model){
		ContactinfoBean contacts=routeOrderService.selectContact(orderNum);
		RouteOrderBean routeorders=routeOrderService.selectRouteOrder(orderNum);
		TouristBean tourists=routeOrderService.selectTourist(orderNum);
		model.addAttribute("contacts", contacts);
		model.addAttribute("routeorders", routeorders);
		model.addAttribute("tourists", tourists);
		return "../routeorderdetails.jsp";
	}
	
	@RequestMapping("/delete.do")
	public String deleteRouteOrder(String orderNum){
		routeOrderService.deleteRouteOrder(orderNum);
		return "index.do";
	}
}
