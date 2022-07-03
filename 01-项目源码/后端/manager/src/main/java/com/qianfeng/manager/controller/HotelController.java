package com.qianfeng.manager.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qianfeng.manager.bean.RoomBean;
import com.qianfeng.manager.bean.ThemeHotelBean;
import com.qianfeng.manager.service.IHotelService;
import com.qianfeng.manager.utils.ExportExcelUtil;

@Controller
public class HotelController {
	private IHotelService hotelService;
	private	static final int PAGE_SIZE = 5;
	@Autowired
	public void setHotelService(IHotelService hotelService) {
		this.hotelService = hotelService;
	}
	@RequestMapping("/queryByType.do")
	public String queryHotelList(Model model,@RequestParam(required=false) Integer pageNo,Integer hType,String type,HttpSession session){
		if(pageNo == null){
			pageNo=1;
		}
		model.addAttribute("pageNo", pageNo);
		pageNo = (pageNo-1)*PAGE_SIZE;
		Map<String, Object> params = new HashMap<String, Object>(2);
		params.put("pageNo", pageNo);
		params.put("hType", hType);
		List<ThemeHotelBean> hotelList = hotelService.queryHotelListByType(params);
		int totalPageNo = hotelService.queryHotelCount(hType);
		model.addAttribute("type", type);
		model.addAttribute("hType", hType);
		model.addAttribute("hotelList", hotelList);
		model.addAttribute("totalPageNo", totalPageNo);
		session.setAttribute("hotelList", hotelList);
		return "hotelType.jsp";
	}
	@RequestMapping("/updateHotel.do")
	public String updateHotel(ThemeHotelBean hotel,Integer pageNo,Model model,Integer hType,String type){
		hotelService.updateHotel(hotel);
		model.addAttribute("pageNo", pageNo);
		pageNo = (pageNo-1)*PAGE_SIZE;
		Map<String, Object> params = new HashMap<String, Object>(2);
		params.put("pageNo", pageNo);
		params.put("hType", hType);
		List<ThemeHotelBean> hotelList = hotelService.queryHotelListByType(params);
		int totalPageNo = hotelService.queryHotelCount(hType);
		model.addAttribute("type", type);
		model.addAttribute("hType", hType);
		model.addAttribute("hotelList", hotelList);
		model.addAttribute("totalPageNo", totalPageNo);
		return "hotelType.jsp";
	}
	@RequestMapping("/queryHotel.do")
	public String queryHotel(Integer hotelId,Model model,Integer pageNo,Integer hType,String type){
		ThemeHotelBean hotel = hotelService.queryHotelById(hotelId);
		model.addAttribute("hotel", hotel);
		model.addAttribute("type", type);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("hType", hType);
		return "updateHotel.jsp";
	}
	@RequestMapping("/deleteHotel.do")
	public String deleteHotel(Integer hotelId,Model model,Integer pageNo,Integer hType,String type){
		hotelService.deleteHotel(hotelId);
		model.addAttribute("pageNo", pageNo);
		pageNo = (pageNo-1)*PAGE_SIZE;
		Map<String, Object> params = new HashMap<String, Object>(2);
		params.put("pageNo", pageNo);
		params.put("hType", hType);
		List<ThemeHotelBean> hotelList = hotelService.queryHotelListByType(params);
		int totalPageNo = hotelService.queryHotelCount(hType);
		model.addAttribute("type", type);
		model.addAttribute("hType", hType);
		model.addAttribute("hotelList", hotelList);
		model.addAttribute("totalPageNo", totalPageNo);
		return "hotelType.jsp";
	}
	@RequestMapping("/exportExcel.do")
	public void export(HttpSession session,HttpServletRequest request,HttpServletResponse response){
		List<ThemeHotelBean> hotelList = (List<ThemeHotelBean>) session.getAttribute("hotelList");
		String sheetName = "student";
	    String [] headers = {"ID","酒店名称","酒店介绍","酒店地址","酒店价格","产品经理推荐","周围环境"};
	    String [] columns = {"hId","hName","hIntroduce","hAddress","hPrice","hGroom","hAround"};
	    ExportExcelUtil<ThemeHotelBean> util = new ExportExcelUtil<ThemeHotelBean>();
	    try {
			util.export(sheetName,headers,columns,hotelList,request,response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@RequestMapping("/insertHotel.do")
	public String insertHotel(ThemeHotelBean hotel){
		hotelService.insertHotel(hotel);
		return "queryByType.do";
	}
	
	@RequestMapping("/gethotelinfo.do")
	public String getHotelInfo(Integer hotelId,Model model){
		ThemeHotelBean hotelInfo = hotelService.getHotelInfo(hotelId);
		if(hotelInfo == null){
			return "404.jsp";
		}
		List<RoomBean> roomList = hotelInfo.getRoomList();
		model.addAttribute("roomList", roomList);
		model.addAttribute("hotelInfo", hotelInfo);
		return "hotelDetails.jsp";
	}
	
	@RequestMapping("/updateRoom.do")
	public String updateRoom(RoomBean room){
		hotelService.updateRoom(room);
		return "hotelType.jsp";
	}
	
	@RequestMapping("/deleteRoom.do")
	public String deleteRoom(Integer room_id){
		hotelService.deleteRoom(room_id);
		return "hotelType.jsp";
	}
	
	@RequestMapping("/insertRoom.do")
	public String insertRoom(RoomBean room){
		hotelService.insertRoom(room);
		return "hotelType.jsp";
	}
}
