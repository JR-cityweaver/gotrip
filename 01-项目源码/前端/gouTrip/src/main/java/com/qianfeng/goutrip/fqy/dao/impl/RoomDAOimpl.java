package com.qianfeng.goutrip.fqy.dao.impl;


import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qianfeng.goutrip.fqy.bean.TbRoom;
import com.qianfeng.goutrip.fqy.dao.IRoomDAO;

@Repository
public class RoomDAOimpl extends SqlSessionDaoSupport implements IRoomDAO {
//?
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory){
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public TbRoom getRoomOrder(Integer room_id) {
		return this.getSqlSession().selectOne("com.qianfeng.goutrip.fqy.bean.TbRoomMapper.getRoomOrder", room_id);
	}

}
