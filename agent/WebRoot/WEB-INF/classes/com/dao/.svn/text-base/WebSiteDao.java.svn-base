package com.dao;

import java.util.List;

import com.entity.Company;
import com.entity.ReportList;
import com.tool.Page;

/**
 * 
 * 门户管理
 *
 */
public interface WebSiteDao {
	
	//查询company表中总共有多少条数据
	public int selectCompanyRows(Company company);
	//根据客户名称和代理商模糊查询客户信息
	public List<Company> selectInfoByCnameAndLowyer(Company company,Page page);
	//根据cid查询公司信息
	public Company selectCompanyByCid(int id);
	//根据公司名称查询公司
	public Company selectCname(String name);
	//根据名称更新公司资金
	public int updateCompanyBalance(ReportList reportList);
}
