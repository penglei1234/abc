package com.dao;

import java.util.List;

import com.entity.LianXiRen;

public interface LianXiRenDao {
	
	//根据公司id可以查询LianXiRen类的多个对象
	public List<LianXiRen> selectLianXiRenByCid(int cid);
}
