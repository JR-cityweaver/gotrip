package com.qianfeng.goutrip.fqy.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qianfeng.goutrip.fqy.bean.TbAddress;
import com.qianfeng.goutrip.fqy.bean.TbTraveller;
import com.qianfeng.goutrip.fqy.dao.IMyselfDAO;

@Repository
public class MyselfDAOImpl extends SqlSessionDaoSupport implements IMyselfDAO {
	
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory){
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public void insertAddr(TbAddress addr) {
		this.getSqlSession().insert("com.qianfeng.goutrip.fqy.bean.TbAddressMapper.insertAddress", addr);
	}

	public List<TbAddress> getAddress(Integer pageNo) {
		return this.getSqlSession().selectList("com.qianfeng.goutrip.fqy.bean.TbAddressMapper.getAddress",pageNo);
	}

	public int addrCount() {
		return this.getSqlSession().selectOne("com.qianfeng.goutrip.fqy.bean.TbAddressMapper.getCount");
	}

	public void deleteAddr(Integer address_id) {
		this.getSqlSession().update("com.qianfeng.goutrip.fqy.bean.TbAddressMapper.deleteAddr", address_id);
	}

	public void updateAddr(TbAddress addr) {
		this.getSqlSession().update("com.qianfeng.goutrip.fqy.bean.TbAddressMapper.updateAddr", addr);
	}

	public void saveTraveller(TbTraveller traveller) {
		this.getSqlSession().insert("com.qianfeng.goutrip.fqy.bean.TbTravellerMapper.saveTraveller", traveller);
	}

	public List<TbTraveller> getTraveller(Integer pageNo) {
		return this.getSqlSession().selectList("com.qianfeng.goutrip.fqy.bean.TbTravellerMapper.getTraveller", pageNo);
	}

	public int TraCount() {
		return this.getSqlSession().selectOne("com.qianfeng.goutrip.fqy.bean.TbTravellerMapper.getCount");
	}

	public void deleteTra(Integer traveller_id) {
		this.getSqlSession().update("com.qianfeng.goutrip.fqy.bean.TbTravellerMapper.deleteTra", traveller_id);
	}

	public void updateTra(TbTraveller traveller) {
		this.getSqlSession().update("com.qianfeng.goutrip.fqy.bean.TbTravellerMapper.updateTra", traveller);
	}
	
}
