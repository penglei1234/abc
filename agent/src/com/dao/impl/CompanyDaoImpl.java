package com.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.BaseDao;
import com.dao.CompanyDao;
import com.entity.Company;
import com.entity.LianXiRen;
public class CompanyDaoImpl extends BaseDao implements CompanyDao {

	@Override
	public List<String> selectCnameByCname(String cname) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int insertCompany(Company company) {
		String sql="INSERT INTO company(cname,tid,state,lowyer,licenseid,country,fax,phone,address,regtime,licensecard,sheng,shi,qu,remark,isdelete,cweb,user_id,user_name,balance) " +
				"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		return update(sql, company.getCname(),company.getTid(),company.getState(),company.getLowyer(),company
				.getLicenseid(),company.getCountry(),company.getFax(),company.getPhone(),company.getAddress(),company.getRegtime(),company
				.getLicensecard(),company.getSheng(),company.getShi(),company.getQu(),company.getRemark(),company.getIsdelete(),company.getCweb(),company.getUserId(),company.getUserName(),company.getBalance());
		
	}

	@Override
	public int insertLianXiRen(LianXiRen lianxiren) {
		String sql="insert into lianxiren(lxname,phone,fax,email,department,cid) values(?,?,?,?,?,?)";
		return update(sql, lianxiren.getLxname(),lianxiren.getPhone(),lianxiren.getFax(),lianxiren.getEmail(),lianxiren.getDepartment(),lianxiren.getCid());
	}

	public int selectCidByCname(String cname) {
		ResultSet rs=null;
		String sql="select cid,cname,balance from company where cname=?";
		try {
			rs=query(sql, cname);
			if(rs.next()){
				Company company=new Company();
				company.setCname(rs.getString("cname"));
				company.setCid(rs.getInt("cid"));
				company.setBalance(rs.getDouble("balance"));
				return company.getCid();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeAll(rs, ps, con);
		}
		return -1;
	}
	@Override
	public Company selectCompanyByCname(String cname) {
		ResultSet rs=null;
		String sql="select * from company where cname=?";
		try {
			rs=query(sql, cname);
			if(rs.next()){
				Company company=new Company();
				company.setCname(rs.getString("cname"));
				company.setCid(rs.getInt("cid"));
				company.setBalance(rs.getDouble("balance"));
				return company;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeAll(rs, ps, con);
		}
		return null;
	}
	
	@Override
	public List<Company> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateCompanyState(int state,int id) {
		
		String sql="update company set state=? where cid=?";
		return update(sql, state,id);
	}
	@Override
	public int deleteCompany(int isdelete, int id) {
		
		String sql="update company set isdelete=? where cid=?";
		return update(sql, isdelete,id);
	}
	@Override
	public int updateCompany(Company company) {
		
		String sql="update company set cname=?,tid=?,state=?,lowyer=?,licenseid=?,country=?,fax=?,phone=?,address=?,regtime=?,licensecard=?,sheng=?,shi=?,qu=?,remark=?,isdelete=?,cweb=?,user_id=?,user_name=?,balance=? where cid=?";
		return update(sql, company.getCname(),company.getTid(),company.getState(),company.getLowyer(),company
				.getLicenseid(),company.getCountry(),company.getFax(),company.getPhone(),company.getAddress(),company.getRegtime(),company
				.getLicensecard(),company.getSheng(),company.getShi(),company.getQu(),company.getRemark(),company.getIsdelete(),company.getCweb(),company.getUserId(),company.getUserName(),company.getBalance(),company.getCid());
	}
	@Override
	public int updateLianXiRen(LianXiRen lianxiren) {
		
		String sql="update lianxiren set lxname=?,phone=?,fax=?,email=?,department=?,cid=? where lxid=?";
		return update(sql, lianxiren.getLxname(),lianxiren.getPhone(),lianxiren.getFax(),lianxiren.getEmail(),lianxiren.getDepartment(),lianxiren.getCid(),lianxiren.getLxid());
	}
	@Override
	public int updateCompanyBalance(double money, int id) {

		String sql="update company set balance=balance+? where cid=?";
		
		return update(sql, money, id);
	}
}
