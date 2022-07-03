package com.qianfeng.goutrip.fqy.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.tomcat.util.log.UserDataHelper.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qianfeng.goutrip.fqy.bean.TbHotelOrder;
import com.qianfeng.goutrip.fqy.dao.IhotelOrderDAO;
import com.qianfeng.goutrip.fqy.dao.impl.HotelDAOImpl;
import com.qianfeng.goutrip.fqy.dao.impl.HotelOrderImpl;
import com.qianfeng.goutrip.fqy.service.IHotelOrderService;
import com.qianfeng.goutrip.fqy.service.impl.HotelOrderServiceImpl;

@Controller
public class HotelOrderController {
	
	private IHotelOrderService orderService;

	@Autowired
	public void setOrderService(IHotelOrderService orderService) {
		this.orderService = orderService;
	}
	
	@RequestMapping("/insertorder.do")
	public String insertOrder(TbHotelOrder hotelOrder, Model model,HttpSession session,HttpServletRequest req){
//		Logger logger=Logger.getLogger(HotelOrderController.class);
//		logger.debug("this is a debug message");
		//获得订单编号
		Object obj = session.getAttribute("userSession");
		Object tokenOne = session.getAttribute("tokenOne");
		if(obj == null){
			return "loginRegister.jsp";
		}else{
			if(tokenOne == null){
				return "redirect:myself.jsp";
			}
			String tokenOneStr = tokenOne.toString();
			String tokenjsp = req.getParameter("tokenjsp");
			if(tokenOneStr.equals(tokenjsp)){
				Date date = new Date();
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
				String time = dateFormat.format(date);
				long timeNow = new Date().getTime();//获得当前的毫秒数
				String time1 = String.valueOf(timeNow);//转成String类型
				String orderNum = time + time1;
				hotelOrder.setHotelorder_number(orderNum);
				//设置外键
				hotelOrder.setTb_user_user_id(1);
				hotelOrder.setHotelorder_type("待付款");
				orderService.insertOrder(hotelOrder);
				model.addAttribute("hotelOrder", hotelOrder);
				return "hotelPay.jsp";
			}else{
				return "redirect:myself.jsp";
			}
		}
	}
	
	@RequestMapping("/paysuccess.do")
	public String getOrderByNum(String hotelorder_number,Model model){
		TbHotelOrder hotelOrder = orderService.getOrderByNum(hotelorder_number);
		orderService.updateType(hotelorder_number);
		model.addAttribute("hotelOrder", hotelOrder);
		return "hotelpaySuccess.jsp";
	}
	
	@RequestMapping("/orderdetail.do")
	public String getOrderDetail(String hotelorder_number,Model model){
		TbHotelOrder hotelOrder = orderService.getOrderByNum(hotelorder_number);
		model.addAttribute("hotelOrder", hotelOrder);
		return "hotelpaySuccess.jsp";
	}
	
	@RequestMapping("/orderlist.do")
	public String getHotelOrder(Integer pageNo,Model model){
		if(pageNo == null){
			pageNo=1;
		}
		model.addAttribute("pageNo", pageNo);
		pageNo = (pageNo-1)*IHotelOrderService.ORDER_SIZE;
		int count = orderService.Count();
		int num = 0;
		if(count%HotelOrderServiceImpl.ORDER_SIZE == 0){
			num = count/HotelOrderServiceImpl.ORDER_SIZE;
		}else{
			num = count/HotelOrderServiceImpl.ORDER_SIZE + 1;
		}
		//获得所有订单列表
		List<TbHotelOrder> orderList = orderService.getHotelOrder(pageNo);
		//将数据传到JSP
		model.addAttribute("totalCount", count);
		model.addAttribute("page", num);
		model.addAttribute("orderList", orderList);
		return "hotel_iframe/allOrder.jsp";
	}
	
	@RequestMapping("/ordertype.do")
	public String getOrderByType(Model model,Integer pageNo,String hotelorder_type){
		if(pageNo == null){
			pageNo=1;
		}
		model.addAttribute("pageNo", pageNo);
		pageNo = (pageNo-1)*IHotelOrderService.ORDER_SIZE;
		int typeCount = orderService.typeCount(hotelorder_type);
		int num = 0;
		if(typeCount%HotelOrderServiceImpl.ORDER_SIZE == 0){
			num = typeCount/HotelOrderServiceImpl.ORDER_SIZE;
		}else{
			num = typeCount/HotelOrderServiceImpl.ORDER_SIZE + 1;
		}
		//获得待付款订单列表
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("hotelorder_type", hotelorder_type);
		map.put("pageNo", pageNo);
		List<TbHotelOrder> orderList = orderService.getOrderByType(map);
		model.addAttribute("typeCount", typeCount);
		model.addAttribute("page", num);
		model.addAttribute("orderList", orderList);
		return "hotel_iframe/noPay.jsp";
	}
	
	@RequestMapping("/ordertypeTrip.do")
	public String getOrderByTypeTrip(Model model,Integer pageNo,String hotelorder_type){
		if(pageNo == null){
			pageNo=1;
		}
		model.addAttribute("pageNo", pageNo);
		pageNo = (pageNo-1)*IHotelOrderService.ORDER_SIZE;
		int typeCount = orderService.typeCount(hotelorder_type);
		int num = 0;
		if(typeCount%HotelOrderServiceImpl.ORDER_SIZE == 0){
			num = typeCount/HotelOrderServiceImpl.ORDER_SIZE;
		}else{
			num = typeCount/HotelOrderServiceImpl.ORDER_SIZE + 1;
		}
		//获得待出行订单列表
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("hotelorder_type", hotelorder_type);
		map.put("pageNo", pageNo);
		List<TbHotelOrder> orderList = orderService.getOrderByType(map);
		model.addAttribute("typeCount", typeCount);
		model.addAttribute("page", num);
		model.addAttribute("orderList", orderList);
		return "hotel_iframe/noTrip.jsp";
	}
	
	@RequestMapping("/deletenopay.do")
	public String deleteNoPay(Integer hotelorder_id){
		orderService.deleteNoPay(hotelorder_id);
		return "orderlist.do";
	}
}
