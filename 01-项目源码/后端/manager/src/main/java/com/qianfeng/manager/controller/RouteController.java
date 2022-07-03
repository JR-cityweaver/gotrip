package com.qianfeng.manager.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qianfeng.manager.bean.RouteBean;
import com.qianfeng.manager.service.IRouteService;

@Controller
@RequestMapping("/route")
public class RouteController {
	private final static int page_size=3;
	private IRouteService routeService;
	@Autowired
	public void setRouteService(IRouteService routeService) {
		this.routeService = routeService;
	}
	
	@RequestMapping("/index.do")
	public String selectList(@RequestParam(required=false) Integer pageNo,Model model,Integer routeType,String type){		
		if(pageNo==null){
			pageNo=1;
		}
		model.addAttribute("pageNo", pageNo);
		pageNo = (pageNo-1)*page_size;
		Map<String, Object> params = new HashMap<String, Object>(2);
		params.put("pageNo", pageNo);
		params.put("routeType", routeType);
		List<RouteBean> routeList=routeService.selectRoute(params);
		int totalpage=routeService.selectRouteTypeCount(routeType);
		model.addAttribute("routeType", routeType);
		model.addAttribute("type", type);
		model.addAttribute("routes", routeList);
		model.addAttribute("count", totalpage);
		return "../routetype.jsp";
	}
	
	@RequestMapping("/select.do")
	public String selectRouteById(Integer routeId,Model model,Integer pageNo,Integer routeType,String type){
		RouteBean route=routeService.selectAllRouteById(routeId);
		model.addAttribute("route", route);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("routeType", routeType);
		model.addAttribute("type", type);
		return "../updateroute.jsp";
	}
	
	@RequestMapping("/delete.do")
	public String deleteRoute(Integer routeId){
		routeService.deleteRoute(routeId);
		return "index.do";
		
	}
	
	@RequestMapping("/update.do")
	public String updateRoute(RouteBean routebean,@RequestParam(required=false) Integer pageNo,Model model,Integer routeType,String type){
		routeService.updateRoute(routebean);
		return "index.do";
	}
	
	@RequestMapping("insert.do")
	public String insertRoute(RouteBean routebean){
		routeService.insertRoute(routebean);
		return "index.do";
	}
	
	
}
