package com.qianfeng.goutrip.zcy.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qianfeng.goutrip.zcy.bean.RouteOrderDTO;
import com.qianfeng.goutrip.zcy.service.IRouteOrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	private static final int PAGE_SIZE=4;
	private IRouteOrderService routeOrderService;
	
	@Autowired
	public void setRouteOrderService(IRouteOrderService routeOrderService) {
		this.routeOrderService = routeOrderService;
	}

	@RequestMapping("/write.do")
	public String orderAdd(RouteOrderDTO routeOrder,Model model,HttpSession session,HttpServletRequest request){
		/*Logger logger=Logger.getLogger(OrderController.class);
		logger.debug("this is a debug message");*/
		Object tokens=session.getAttribute("token");
		if(tokens==null){
			return "redirect:/myself.jsp";
		}
		String token=tokens.toString();
		
		String tokenB=request.getParameter("token");
		if(token.equals(tokenB)){
			Date b=new Date();
			SimpleDateFormat formatter=new SimpleDateFormat("yyyyMMddHHmmss");
			String dateString=formatter.format(b);
			session.removeAttribute("token");
			routeOrder.setOrder_num(dateString);	
			routeOrder.setOrder_id(dateString);
			routeOrderService.insertRouteOrder(routeOrder);
			routeOrderService.insertTourist(routeOrder);
			routeOrderService.insertContactman(routeOrder);
			model.addAttribute("routeOrder",routeOrder);
			return "/routeOrderSubmit.jsp";
		}else{
			
			return "redirect:/myself.jsp";
		}
		
	}
	
	@RequestMapping("/pay.do")
	public String selectOrders(String order_num,Model model){
		routeOrderService.updateOrder(order_num);	
		return "/routeJSP/routeOrderSuccess.jsp";
	}
	
	@RequestMapping("/selectOrder.do")
	public String selectOrderDetail(String order_num,Model model){		
		RouteOrderDTO routeOrder=routeOrderService.selectOrder(order_num);
		RouteOrderDTO contact=routeOrderService.selectContact(order_num);
		RouteOrderDTO tourist=routeOrderService.selectTourist(order_num);
		model.addAttribute("routeOrder",routeOrder);
		model.addAttribute("contact",contact);
		model.addAttribute("tourist",tourist);
		return "/OrderJSP/selectOrder.jsp";
		
	}
	
	@RequestMapping("/getAllOrder.do")
	public String selectALLOrder(Integer pageno,Model model){
		if(pageno==null){
			pageno=1;
		}
		model.addAttribute("pageno",pageno);
		List<RouteOrderDTO> routeOrder=routeOrderService.selectAllOrder(pageno);
		int totalPage=routeOrderService.countOrder();
		model.addAttribute("routeOrder",routeOrder);
		model.addAttribute("totalPage",totalPage);		
		return "/OrderJSP/routeOrder.jsp";
	}
	
	@RequestMapping("/unpay.do")
	public String selectUnpay(Integer pageno,String order_type,Model model){
		if(pageno==null||pageno<1){
			pageno=1;
		}
		model.addAttribute("pageno",pageno);
		pageno=(pageno-1)*PAGE_SIZE;
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("pageno", pageno);
		map.put("order_type", order_type);
		List<RouteOrderDTO> routeOrder=routeOrderService.selectUnpay(map);
		int totalPage=routeOrderService.selectCount(order_type);
		model.addAttribute("routeOrder",routeOrder);
		model.addAttribute("totalPage",totalPage);		
		return "/OrderJSP/routeOrder.jsp";			
	}
	
	@RequestMapping("/unpayOrder.do")
	public String queryUnpayOrder(String order_num,Model model){
		RouteOrderDTO routeOrder=routeOrderService.selectOrder(order_num);
		RouteOrderDTO contact=routeOrderService.selectContact(order_num);
		RouteOrderDTO tourist=routeOrderService.selectTourist(order_num);
		model.addAttribute("routeOrder",routeOrder);
		model.addAttribute("contact",contact);
		model.addAttribute("tourist",tourist);
		return "/OrderJSP/orderUnPay.jsp";	
	}
	

	//查询路线某个团期的已定总人数
	@RequestMapping("/limit.do")
	public void selectLimit(String order_begindate,Model model,HttpServletResponse response){
		int limit=routeOrderService.selectLimt(order_begindate);
		
		//String json="{'kucun':limit}";
		try {
			PrintWriter pw=response.getWriter();
			pw.print(limit);
			pw.flush();
			pw.close();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		System.out.println("总数="+limit);
		
		
	}
	

	@RequestMapping("/deleteUnPay.do")
	public String deleteUnPay(String order_num){
		routeOrderService.deleteUnPay(order_num);
		return "getAllOrder.do";
	}
	@RequestMapping("/deleteUnTrip.do")
	public String deleteUnTrip(String order_num){
		routeOrderService.deleteUnTrip(order_num);
		return "getAllOrder.do";
	}
}
