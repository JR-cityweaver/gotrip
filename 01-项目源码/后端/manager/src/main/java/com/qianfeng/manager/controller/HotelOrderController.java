package com.qianfeng.manager.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qianfeng.manager.bean.HotelOrderBean;
import com.qianfeng.manager.bean.TailorBean;
import com.qianfeng.manager.service.IHotelOrderService;

@Controller
@RequestMapping("/hotelorder")
public class HotelOrderController {

	private final static int page_size=3;
	private IHotelOrderService hotelOrderService;
	
	@Autowired
	public void setHotelOrderService(IHotelOrderService hotelOrderService) {
		this.hotelOrderService = hotelOrderService;
	}
	@RequestMapping("/index.do")
	public String selectHotelList(@RequestParam(required=false) Integer pageNo,Model model,String hotelorder_type,String type){
		if(pageNo==null){
			pageNo=1;
		}
		model.addAttribute("pageNo", pageNo);
		pageNo=(pageNo-1) * page_size;
		Map<String, Object> map = new HashMap<String, Object>(2);
		map.put("pageNo", pageNo);
		map.put("hotelorder_type", hotelorder_type);
		List<HotelOrderBean> hotelorders=hotelOrderService.getOrderByType(map);
		int totalpage=hotelOrderService.typeCount(hotelorder_type);
		model.addAttribute("hotelorders", hotelorders);
		model.addAttribute("hotelorder_type", hotelorder_type);
		model.addAttribute("type", type);
		model.addAttribute("count", totalpage);
		return "../hotelorder.jsp";
	}
	

	@RequestMapping("/delete.do")
	public String deleteHotelOrder(Integer hotelorder_id,@RequestParam(required=false) Integer pageNo,Model model,String hotelorder_type,String type){
		hotelOrderService.deleteHotelOrder(hotelorder_id);
		return "index.do";
	}
	

	@RequestMapping("/tailor.do")
	public String getTailor(Integer pageNo,Model model){
		if(pageNo == null){
			pageNo = 1;
		}
		model.addAttribute("pageNo", pageNo);
		pageNo=(pageNo-1) * page_size;
		List<TailorBean> tailorList = hotelOrderService.getTailor(pageNo);
		model.addAttribute("tailorList", tailorList);
		int page = hotelOrderService.tailorCount();
		model.addAttribute("page", page);
		return "../tailor.jsp";
	}
	
	@RequestMapping("/tailorinfo.do")
	public String getTailorInfo(Integer tailor_id,Model model){
		TailorBean tailorInfo = hotelOrderService.getTailorInfo(tailor_id);
		model.addAttribute("tailorInfo", tailorInfo);
		return "../tailorDetails.jsp";
	}
	
	@RequestMapping("/deletetailor.do")
	public String deleteTailor(Integer tailor_id){
		hotelOrderService.deleteTailor(tailor_id);
		return "tailor.do";
	}

}
