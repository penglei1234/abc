package com.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.BaseDao;
import com.dao.WebSiteDao;
import com.entity.Company;
import com.entity.ReportList;
import com.tool.Page;

public class WebSiteDaoImpl extends BaseDao implements WebSiteDao {

	@Override
	public int selectCompanyRows(Company company) {

		
		
		StringBuffer sql=new StringBuffer("select count(cid) from company where 1=1 ");
		ResultSet rs=null;
		List<Object> params=new ArrayList<Object>();
		if(company!=null){
			String cname=company.getCname();
			String userName=company.getUserName();
			if(cname!=null&&!"".equals(cname)){ 
				sql.append("and cname like ? ");
				params.add("%"+cname+"%");
			}
			if(userName!=null&&!"".equals(userName)){
				sql.append("and user_name like ? ");
				params.add("%"+userName+"%");
			}	
		}
			try {
				rs=query(sql.toString(),params.toArray());
				if(rs.next()){
					return rs.getInt(1);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally{
				closeAll(rs, ps, con);
			}	
		return 0;
	}

	@Override
	public List<Company> selectInfoByCnameAndLowyer(Company company,Page page) {

		StringBuffer sql=new StringBuffer("select * from company where isdelete=1 ");
		ResultSet rs=null;
		List<Object> params=new ArrayList<Object>();
		if(company!=null){
			String cname=company.getCname();
			String userName=company.getUserName();
			if(cname!=null&&!"".equals(cname)){
				sql.append("and cname like ? ");
				params.add("%"+cname+"%");
			}
			if(userName!=null&&!"".equals(userName)){
				sql.append("and user_name like ? ");
				params.add("%"+userName+"%");
			}	
		}
		sql.append("order by cid desc ");
		sql.append("limit ?,?");
		params.add((page.getPageNow()-1)*page.getPageSize());
		params.add(page.getPageSize());
		
		List<Company> companyList=new ArrayList<Company>();
		try {
			rs=query(sql.toString(), params.toArray());
			while(rs.next()){
				Company com=new Company();
				com.setCid(rs.getInt("cid"));
				com.setCname(rs.getString("cname"));
				com.setTid(rs.getInt("tid"));
				com.setState(rs.getInt("state"));
				com.setLowyer(rs.getString("lowyer"));
				com.setLicenseid(rs.getInt("licenseid"));
				com.setCountry(rs.getString("country"));
				com.setFax(rs.getString("fax"));
				com.setPhone(rs.getString("phone"));
				com.setAddress(rs.getString("address"));
				com.setRegtime(rs.getDate("regtime"));
				com.setLicensecard(rs.getString("licensecard"));
				com.setSheng(rs.getString("sheng"));
				com.setShi(rs.getString("shi"));
				com.setQu(rs.getString("qu"));
				com.setRemark(rs.getString("remark"));
				com.setIsdelete(rs.getInt("isdelete"));
				com.setCweb(rs.getString("cweb"));
				com.setUserId(rs.getInt("user_id"));
				com.setUserName(rs.getString("user_name"));
				com.setUser(new UserDaoImpl().selectUserById(com.getUserId()));
				com.setBalance(rs.getDouble("balance"));
				com.setCstmTypeTb(new CustomerTypeTbDaoImpl().selectByTid(com.getTid()));
				com.setKeyword(new KeywordDaoImpl().selectKeywordByCid(com.getCid()));
				
				companyList.add(com);	
			}
			return companyList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(rs, ps, con);
		}
		return null;
	}

	@Override
	public Company selectCompanyByCid(int id) {
		
		String sql="select * from company where cid=?";
		ResultSet rs=null;
		try {
			rs=query(sql, id);
			if(rs.next()){
				Company com=new Company();
				com.setCid(rs.getInt("cid"));
				com.setCname(rs.getString("cname"));
				com.setTid(rs.getInt("tid"));
				com.setState(rs.getInt("state"));
				com.setLowyer(rs.getString("lowyer"));
				com.setLicenseid(rs.getInt("licenseid"));
				com.setCountry(rs.getString("country"));
				com.setFax(rs.getString("fax"));
				com.setPhone(rs.getString("phone"));
				com.setAddress(rs.getString("address"));
				com.setRegtime(rs.getDate("regtime"));
				com.setLicensecard(rs.getString("licensecard"));
				com.setSheng(rs.getString("sheng"));
				com.setShi(rs.getString("shi"));
				com.setQu(rs.getString("qu"));
				com.setRemark(rs.getString("remark"));
				com.setIsdelete(rs.getInt("isdelete"));
				com.setCweb(rs.getString("cweb"));
				com.setUserId(rs.getInt("user_id"));
				com.setUserName(rs.getString("user_name"));
				com.setBalance(rs.getDouble("balance"));
				com.setCstmTypeTb(new CustomerTypeTbDaoImpl().selectByTid(com.getTid()));
				com.setKeyword(new KeywordDaoImpl().selectKeywordByCid(com.getCid()));
				com.setLianXiRen(new LianXiRenDaoImpl().selectLianXiRenByCid(com.getCid()));
				com.setUser(new UserDaoImpl().selectUserById(com.getUserId()));
				
				return com;
			}
		} catch (Exception e) {
			// TODO: handle exception
		} finally{
			closeAll(rs, ps, con);
		}
		return null;
	}

	@Override
	public Company selectCname(String name) {

		String sql="select cid, cname from company where cname like ?";
		ResultSet rs=null;
		try {
			rs=query(sql, "%"+name+"%");
			if(rs.next()){
				Company company=new Company();
				company.setCname(rs.getString("cname"));
				company.setCid(rs.getInt("cid"));
				return company;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(rs, ps, con);
		}
		return null;
	}

	@Override
	public int updateCompanyBalance(ReportList reportList) {

		String sql="update company set balance=balance+? where cname=?";
		return update(sql, reportList.getRepMoney(), reportList.getRepCusterm());
	}
}
