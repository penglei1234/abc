package com.service.impl;

import java.util.List;

import com.dao.KeyWordCheckdao;
import com.dao.impl.KeyWordCheckdaoImpl;
import com.entity.Keyword;
import com.service.KeyWordCheckService;
import com.tool.Page;

public class KeyWordCheckServiceImpl implements KeyWordCheckService{
	KeyWordCheckdao kd=new KeyWordCheckdaoImpl(); 
	 
	public int selectPageSize(String name) {
		 
		return kd. selectPageSize(name);
	}

 
	public List<Keyword> selectAll(Page page, String name) {
		
		return kd.selectAll(page, name);
	}

}
