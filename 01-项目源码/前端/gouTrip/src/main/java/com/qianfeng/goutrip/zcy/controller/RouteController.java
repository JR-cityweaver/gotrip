package com.qianfeng.goutrip.zcy.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qianfeng.goutrip.zcy.bean.RouteDTO;
import com.qianfeng.goutrip.zcy.service.IRouteService;

@Controller
@RequestMapping("/route")
public class RouteController {

	private static final Integer THEME_SIZE=6;
	private IRouteService routeService;

	@Autowired
	public void setRouteService(IRouteService routeService) {
		this.routeService = routeService;
	}
	
	@RequestMapping("/getAllRoute.do")
	public String getAllRoute(Integer pageno,Model model){
		model.addAttribute("pageno",pageno);
		List<RouteDTO> routeList=routeService.queryAllRoute(pageno);
		int totalPage=routeService.queryCount();
		model.addAttribute("routeList",routeList);
		model.addAttribute("totalPage",totalPage);
		return "../routeJSP/routeTheme.jsp";
	}
	
	@RequestMapping("/getAllProduct.do")
	public String getAllProduct(Integer pageno,Model model){
		List<RouteDTO> routeList=routeService.queryAllRoute(pageno);
		int totalPage=routeService.queryCount();
		model.addAttribute("routeList",routeList);
		model.addAttribute("totalPage",totalPage);
	
		return "../routeJSP/routeProduct2.jsp";
	}
	
	@RequestMapping("/getRouteByTheme.do")
	public String getRouteByTheme(Integer route_themetype,Integer pageno,Model model){
		if(pageno==null||pageno<1){
			pageno=1;
		}
		model.addAttribute("pageno",pageno);
		pageno=(pageno-1)*THEME_SIZE;
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("route_themetype", route_themetype);
		map.put("pageno", pageno);
		List<RouteDTO> themeList=routeService.queryRouteByTheme(map);
		int themePage=routeService.queryThemeCount(route_themetype);
		model.addAttribute("themePage",themePage);
		model.addAttribute("themeList",themeList);
		return "../routeJSP/qinzixilie.jsp";		
	}
	
	@RequestMapping("/getRouteByCountry.do")
	public String getRouteByCountry(String country,Model model){
		System.out.println(country);
		List<RouteDTO> countryList=routeService.queryRouteByCountry(country);
		if(countryList.size()==0){
			return "../routeJSP/noResult.jsp";
		}
		model.addAttribute("countryList",countryList);
		return "../routeJSP/routeCountry.jsp";		
	}
	
	@RequestMapping("/search.do")
	public String SearchRoute(String country,Model model){
		System.out.println(country);
		model.addAttribute("country",country);
		List<RouteDTO> countryList=routeService.queryRouteByCountry(country);
		if(countryList.size()==0){
			return "../routeJSP/miss.jsp";
		}
		model.addAttribute("countryList",countryList);
		return "../routeJSP/routeSearch.jsp";		
	}
	
	@RequestMapping("/hot.do")
	public String queryRouteByHot(Integer pageno,Model model){
		model.addAttribute("pageno",pageno);
		List<RouteDTO>  hotList= routeService.queryRouteByHot(pageno);
		int totalPage=routeService.queryCount();
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("hotList",hotList);
		return "../routeJSP/routeHot.jsp";		
	}
	
	@RequestMapping("/day.do")
	public String queryRouteByDays(Integer pageno,Model model){
		model.addAttribute("pageno",pageno);
		List<RouteDTO> dayList=routeService.queryRouteByDays(pageno);
		int totalPage=routeService.queryCount();
		model.addAttribute("dayList",dayList);
		model.addAttribute("totalPage",totalPage);
		return "../routeJSP/routeDay.jsp";
	}
	
	@RequestMapping("/price.do")
	public String queryRouteByPrice(Integer pageno,Model model){
		model.addAttribute("pageno",pageno);
		List<RouteDTO> priceList=routeService.queryRouteByPrice(pageno);
		int totalPage=routeService.queryCount();
		model.addAttribute("priceList",priceList);
		model.addAttribute("totalPage",totalPage);
		return "../routeJSP/routePrice.jsp";
	}
	
	@RequestMapping("/dayAsc.do")
	public String queryRouteByDaysAsc(Integer pageno,Model model){
		model.addAttribute("pageno",pageno);
		List<RouteDTO> dayList=routeService.queryRouteByDaysAsc(pageno);
		int totalPage=routeService.queryCount();
		model.addAttribute("dayList",dayList);
		model.addAttribute("totalPage",totalPage);
		return "../routeJSP/routeDayAsc.jsp";
	}
	
	@RequestMapping("/priceAsc.do")
	public String queryRouteByPriceAsc(Integer pageno,Model model){
		model.addAttribute("pageno",pageno);
		List<RouteDTO> dayList=routeService.queryRouteByPriceAsc(pageno);
		int totalPage=routeService.queryCount();
		model.addAttribute("dayList",dayList);
		model.addAttribute("totalPage",totalPage);
		return "../routeJSP/routePriceAsc.jsp";
	}
	
	@RequestMapping("/team.do")
	public String queryRouteByTeam(Integer tb_way,Integer pageno,Model model){
		model.addAttribute("pageno",pageno);
		if(pageno==null||pageno<1){
			pageno=1;
		}
		pageno=(pageno-1)*THEME_SIZE;
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("pageno", pageno);
		map.put("tb_way", tb_way);
		int totalPage=routeService.queryTeamCount(tb_way);
		System.out.println(totalPage);
		List<RouteDTO> teamList=routeService.queryRouteByTeam(map);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("teamList",teamList);
		return "../routeJSP/routeTeam.jsp";		
	}
}
