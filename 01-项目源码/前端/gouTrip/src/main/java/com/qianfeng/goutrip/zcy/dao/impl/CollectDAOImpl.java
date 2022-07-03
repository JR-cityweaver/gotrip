package com.qianfeng.goutrip.zcy.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qianfeng.goutrip.zcy.bean.CollectDTO;
import com.qianfeng.goutrip.zcy.dao.ICollectDAO;
@Repository
public class CollectDAOImpl extends SqlSessionDaoSupport implements ICollectDAO {

	
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {	
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	
	public void insertColl(CollectDTO collect) {
		this.getSqlSession().insert("com.qianfeng.goutrip.zcy.bean.CollectMapper.insertCollect",collect);
	}


	public void deleteColl(Integer collect_detail_id) {
		this.getSqlSession().delete("com.qianfeng.goutrip.zcy.bean.CollectMapper.deleteCollect",collect_detail_id);
		
	}


	public CollectDTO selectCollById(Integer collect_detail_id) {
		
		return this.getSqlSession().selectOne("com.qianfeng.goutrip.zcy.bean.CollectMapper.selectCollectById",collect_detail_id);
	}


	public List<CollectDTO> selectAll(Integer user_collect) {
		
		return this.getSqlSession().selectList("com.qianfeng.goutrip.zcy.bean.CollectMapper.selectAllColl",user_collect);
	}

}
