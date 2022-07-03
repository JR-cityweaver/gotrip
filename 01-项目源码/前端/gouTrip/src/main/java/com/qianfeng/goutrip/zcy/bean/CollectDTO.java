package com.qianfeng.goutrip.zcy.bean;

public class CollectDTO {

	private Integer collect_id;
	
	private String collect_name;
	
	private String collect_picture;
	
	private Integer collect_detail_id;
	
	private Integer user_collect;

	public Integer getCollect_id() {
		return collect_id;
	}

	public void setCollect_id(Integer collect_id) {
		this.collect_id = collect_id;
	}

	public String getCollect_name() {
		return collect_name;
	}

	public void setCollect_name(String collect_name) {
		this.collect_name = collect_name;
	}

	public String getCollect_picture() {
		return collect_picture;
	}

	public void setCollect_picture(String collect_picture) {
		this.collect_picture = collect_picture;
	}

	public Integer getCollect_detail_id() {
		return collect_detail_id;
	}

	public void setCollect_detail_id(Integer collect_detail_id) {
		this.collect_detail_id = collect_detail_id;
	}

	public Integer getUser_collect() {
		return user_collect;
	}

	public void setUser_collect(Integer user_collect) {
		this.user_collect = user_collect;
	}
}
