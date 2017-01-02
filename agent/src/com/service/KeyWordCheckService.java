package com.service;

import java.util.List;

import com.entity.Keyword;
import com.tool.Page;

public interface KeyWordCheckService {
	//查询总行数
	public int selectPageSize(String name);


//模糊查询，分页查询
	public List<Keyword> selectAll(Page page, String name);
	 


}
