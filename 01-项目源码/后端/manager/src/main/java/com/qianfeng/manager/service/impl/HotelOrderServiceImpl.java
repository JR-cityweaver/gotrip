package com.qianfeng.manager.service.impl;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.qianfeng.manager.bean.HotelOrderBean;
import com.qianfeng.manager.bean.TailorBean;
import com.qianfeng.manager.dao.IHotelOrderDAO;
import com.qianfeng.manager.service.IHotelOrderService;
@Transactional
@Component
public class HotelOrderServiceImpl implements IHotelOrderService{

	private IHotelOrderDAO hotelOrdelDAO;
	private final static int page_size=3;
	@Autowired
	public void setHotelOrdelDAO(IHotelOrderDAO hotelOrdelDAO) {
		this.hotelOrdelDAO = hotelOrdelDAO;
	}

	public HotelOrderBean getHotelOrderByNum(String hotelorder_number) {
		return hotelOrdelDAO.getHotelOrderByNum(hotelorder_number);
	}

	public List<HotelOrderBean> getHotelOrder(Integer pageNo) {
		return hotelOrdelDAO.getHotelOrder(pageNo);
	}

	public List<HotelOrderBean> getOrderByType(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return hotelOrdelDAO.getOrderByType(map);
	}
	
	public int typeCount(String hotelorder_type) {
		int count=hotelOrdelDAO.typeCount(hotelorder_type);
		int temp=count%page_size;
		int totalpage;
		if(temp==0){
			totalpage=count/page_size;
		}else{
			totalpage=count/page_size + 1;
		}
		return totalpage;
	}


	public void deleteHotelOrder(Integer hotelorder_id) {
		// TODO Auto-generated method stub
		hotelOrdelDAO.deleteHotelOrder(hotelorder_id);
	}


	public List<TailorBean> getTailor(Integer pageNo) {
		return hotelOrdelDAO.getTailor(pageNo);
	}

	public int tailorCount() {
		int count = hotelOrdelDAO.tailorCount();
		int temp=count%page_size;
		int totalpage;
		if(temp==0){
			totalpage=count/page_size;
		}else{
			totalpage=count/page_size + 1;
		}
		return totalpage;
	}

	public TailorBean getTailorInfo(Integer tailor_id) {
		return hotelOrdelDAO.getTailorInfo(tailor_id);
	}

	public void deleteTailor(Integer tailor_id) {
		hotelOrdelDAO.deleteTailor(tailor_id);
	}


	

}
