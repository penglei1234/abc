package com.service;

import java.util.Date;
import java.util.List;

import com.entity.RiZhi;
import com.tool.Page;

public interface RiZhiService {
	//根据模糊查询和分页查询所有RiZhirzname
		public List<RiZhi> selectAll(Page page,String rzname,String beginDate,String endDate);
		//查询总行数
		public int selectPageSize(String rzname,String beginDate,String endDate);
		//public List<RiZhi> selectA(Page page);
}
