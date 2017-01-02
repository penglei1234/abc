package com.service.impl;

import java.util.List;

import com.dao.WebSiteDao;
import com.dao.impl.WebSiteDaoImpl;
import com.entity.Company;
import com.entity.ReportList;
import com.service.WebSiteService;
import com.tool.Page;

public class WebSiteServiceImpl implements WebSiteService {
	
	private WebSiteDao webSiteDao=new WebSiteDaoImpl();
	@Override
	public int selectCompanyRows(Company company) {
		// TODO Auto-generated method stub
		return webSiteDao.selectCompanyRows(company);
	}
	@Override
	public List<Company> selectInfoByCnameAndLowyer(Company company,Page page) {
		// TODO Auto-generated method stub
		return webSiteDao.selectInfoByCnameAndLowyer(company,page);
	}
	@Override
	public Company selectCompanyByCid(int id) {
		// TODO Auto-generated method stub
		return webSiteDao.selectCompanyByCid(id);
	}
	@Override
	public Company selectCname(String name) {
		// TODO Auto-generated method stub
		return webSiteDao.selectCname(name);
	}
	@Override
	public int updateCompanyBalance(ReportList reportList) {
		// TODO Auto-generated method stub
		return webSiteDao.updateCompanyBalance(reportList);
	}
	

}
