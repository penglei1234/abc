package com.tool;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.BaseDao;
import com.entity.CompanyQu;
import com.entity.CompanySheng;
import com.entity.CompanyShi;

public class Sheng extends BaseDao {
	
	public List<CompanySheng> select(){
		
		String sql="select sid,sheng from company_sheng";
		List<CompanySheng> shengList=new ArrayList<CompanySheng>();
		
		ResultSet rs=null;
		try {
			rs=query(sql);
			if(rs!=null){
				while(rs.next()){
					CompanySheng sheng=new CompanySheng();
					sheng.setSid(rs.getInt("sid"));
					sheng.setSheng(rs.getString("sheng"));
					shengList.add(sheng);
				}
			}	
		} catch (Exception e) {
			// TODO: handle exception
		} finally{
			closeAll(rs, ps, con);
		}
		return shengList;
	}
	public List<CompanyShi> selectShi(int id){
		String sql="select hid,shi from company_shi where sid=?";
		ResultSet rs=null;
		List<CompanyShi> shiList=new ArrayList<CompanyShi>();
		try {
			rs=query(sql,id);
			if(rs!=null){
				while(rs.next()){
					CompanyShi shi=new CompanyShi();
					shi.setHid(rs.getInt("hid"));
					shi.setShi(rs.getString("shi"));
					shiList.add(shi);
				}
			}	
		} catch (Exception e) {
			// TODO: handle exception
		} finally{
			closeAll(rs, ps, con);
		}
		return shiList;
	}
	public List<CompanyQu> selectQu(int id){
		String sql="select qid,qu from company_qu where hid=?";
		ResultSet rs=null;
		List<CompanyQu> quList=new ArrayList<CompanyQu>();
		try {
			rs=query(sql,id);
			if(rs!=null){
				while(rs.next()){
					CompanyQu qu=new CompanyQu();
					qu.setQid(rs.getInt("qid"));
					qu.setQu(rs.getString("qu"));
					quList.add(qu);
				}
			}	
		} catch (Exception e) {
			// TODO: handle exception
		} finally{
			closeAll(rs, ps, con);
		}
		return quList;
	}
}
