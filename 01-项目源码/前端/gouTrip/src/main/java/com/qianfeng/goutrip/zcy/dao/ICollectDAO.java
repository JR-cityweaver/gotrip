package com.qianfeng.goutrip.zcy.dao;

import java.util.List;

import com.qianfeng.goutrip.zcy.bean.CollectDTO;

public interface ICollectDAO {
	void insertColl(CollectDTO collect);
	
	void deleteColl(Integer collect_detail_id);
	
	CollectDTO selectCollById(Integer collect_detail_id );
	
	List<CollectDTO> selectAll(Integer user_collect);
}
