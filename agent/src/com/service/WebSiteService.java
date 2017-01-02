package com.service;

import java.util.List;

import com.entity.Company;
import com.entity.ReportList;
import com.tool.Page;

public interface WebSiteService {
	
	public int selectCompanyRows(Company company);
	public List<Company> selectInfoByCnameAndLowyer(Company company,Page page);
	public Company selectCompanyByCid(int id);
	public Company selectCname(String name);
	public int updateCompanyBalance(ReportList reportList);
}
