package com.dao;

import java.util.List;

import com.entity.Keyword;
import com.tool.Page;

public interface KeyWordCheckdao {
//查询总行数
	public int selectPageSize(String name);
	//根据模糊查询和分页查询所有List<Keyword>
	public List<Keyword> selectAll(Page page, String name);

}
