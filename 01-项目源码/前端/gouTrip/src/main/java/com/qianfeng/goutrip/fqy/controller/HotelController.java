package com.qianfeng.goutrip.fqy.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qianfeng.goutrip.fqy.service.IHotelService;
import com.qianfeng.goutrip.fqy.bean.TbHotel;
import com.qianfeng.goutrip.fqy.bean.TbRoom;

@Controller
public class HotelController {
	
	private IHotelService hotelService;
	
	@Autowired
	public void setHotelService(IHotelService hotelService) {
		this.hotelService = hotelService;
	}

	@RequestMapping("/hoteltype.do")
	public String getHotel(Model model,Integer pageNo,Integer hotel_type,String type){
		if(pageNo == null){
			pageNo = 1;
		}
		model.addAttribute("pageNo", pageNo);
		pageNo = (pageNo-1)*IHotelService.HOTEL_LIST_SIZE;
		Map<String, Object> map = new HashMap<String, Object>(2);
		map.put("hotel_type",hotel_type);
		map.put("pageNo", pageNo);
		List<TbHotel> hotelTypeList = hotelService.getTypeHotel(map);
		int page = hotelService.typeCount(hotel_type);//根据type分类获得的总页数
		model.addAttribute("type", type);
		model.addAttribute("page", page);
		model.addAttribute("hotelTypeList",hotelTypeList);
		return "hotelTypeList.jsp";
	}
	@RequestMapping("/list.do")
	public String getHotelByType(Model model,Integer hotel_type,Integer pageNo){
		if(pageNo == null){
			pageNo = 1;
		}
		model.addAttribute("pageNo", pageNo);
		pageNo = (pageNo-1)*IHotelService.HOTEL_LIST_SIZE;
		List<TbHotel> hotelList = hotelService.getAllHotel(pageNo);
		int page = hotelService.totalCount();//所有酒店总页数
		model.addAttribute("page", page);
		model.addAttribute("hotelList", hotelList);
		return "hotelList.jsp";
	}
	
	@RequestMapping("/hotel.do")
	public String selectHotel(Model model){
		List<TbHotel> hotelList = hotelService.getHotelList();
		List<TbHotel> SHhotelByLike = hotelService.getSHHotelByLike();
		List<TbHotel> HZhotelByLike = hotelService.getHZHotelByLike();
		List<TbHotel> SYhotelByLike = hotelService.getSYHotelByLike();
		List<TbHotel> XMhotelByLike = hotelService.getXMHotelByLike();
		List<TbHotel> SZhotelByLike = hotelService.getSZHotelByLike();
		model.addAttribute("hotelList",hotelList);
		model.addAttribute("SHhotelByLike",SHhotelByLike);
		model.addAttribute("HZhotelByLike",HZhotelByLike);
		model.addAttribute("SYhotelByLike",SYhotelByLike);
		model.addAttribute("XMhotelByLike",XMhotelByLike);
		model.addAttribute("SZhotelByLike",SZhotelByLike);
		return "hotel.jsp";
	}
	
	@RequestMapping("/search.do")
	public String getHotelBySearch(String city,Model model,HttpSession session){
		System.out.println("酒店首页搜索城市 ="+city);
		session.setAttribute("city", city);
		List<TbHotel> hotelSearchList = hotelService.getHotelBySearch(city);
		model.addAttribute("hotelSearchList", hotelSearchList);
		return "hotelSearch.jsp";
	}
	
	@RequestMapping("/hotelInfo.do")
	public String getRoomByHotel(Integer hotel_id,Model model,HttpSession session){
//		List<TbRoom> roomList = hotelService.getRoomByHotel(hotel_id);
		TbHotel hotelInfo = hotelService.getHotelInfo(hotel_id);
		List<TbRoom> roomList = hotelInfo.getRoomList();
		model.addAttribute("hotelInfo", hotelInfo);
		model.addAttribute("roomList", roomList);
		Random rand = new Random();
		int tokenOne = rand.nextInt(1000000);
		session.setAttribute("tokenOne", tokenOne);
		return "hotelInfo.jsp";
	}
}
