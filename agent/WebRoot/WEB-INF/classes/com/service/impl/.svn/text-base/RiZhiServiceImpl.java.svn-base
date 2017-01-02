package com.service.impl;

import java.util.Date;
import java.util.List;

import com.dao.RiZhiDao;
import com.dao.impl.RiZhiDaoImpl;
import com.entity.RiZhi;
import com.service.RiZhiService;
import com.tool.Page;

public class RiZhiServiceImpl implements RiZhiService{
protected RiZhiDao riZhiDao=new RiZhiDaoImpl();

@Override
public List<RiZhi> selectAll(Page page, String rzname,String beginDate,String endDate) {
	// TODO Auto-generated method stub
	return riZhiDao.selectAll(page, rzname, beginDate, endDate);
}

@Override
public int selectPageSize(String rzname,String beginDate,String endDate) {
	// TODO Auto-generated method stub
	return riZhiDao.selectPageSize(rzname, beginDate, endDate);
}


/*public List<RiZhi> selectA(Page page) {
	
	return riZhiDao.selectA(page);
}*/





	

}
