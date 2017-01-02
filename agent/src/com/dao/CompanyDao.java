package com.dao;

import java.util.List;

import com.entity.Company;
import com.entity.LianXiRen;

public interface CompanyDao {
	
	public List<String> selectCnameByCname(String cname);
	public int insertCompany(Company company);
	public int insertLianXiRen(LianXiRen lianxiren);
	public int selectCidByCname(String cname);
	public Company selectCompanyByCname(String cname);
	public List<Company> selectAll();
	public int updateCompanyState(int state,int id);
	public int deleteCompany(int isdelete,int id);
	public int updateCompany(Company company);
	public int updateLianXiRen(LianXiRen lianxiren);
	public int updateCompanyBalance(double money,int id);
}
