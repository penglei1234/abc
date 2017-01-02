package com.dao.impl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.BaseDao;
import com.dao.LicenseTbDao;
import com.entity.FinaceTb;
import com.entity.LicenseTb;
import com.tool.Page;

public class LicenseTbDaoImpl extends BaseDao implements LicenseTbDao {

	@Override
	public LicenseTb selectLicenseTbById(int id) {

		String sql="select * from license_tb where id=?";
		ResultSet rs=null;
		try {
			rs=query(sql, id);
			while(rs.next()){
				LicenseTb licenseTb=new LicenseTb();
				licenseTb.setId(rs.getInt("id"));
				licenseTb.setLicsType(rs.getString("licsType"));
				licenseTb.setState(rs.getInt("state"));
				licenseTb.setIsdelete(rs.getInt("isdelete"));
				
				return licenseTb;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeAll(rs, ps, con);
		}
		return null;
	}

	@Override
	public int insert(LicenseTb license) {
		String sql="insert into license_tb(licsType,state) values(?,?)" ;
		int rows=update(sql,license.getLicsType(),license.getState());
		return rows;
	}

	@Override
	public int delete(int id) {
		String sql="update license_tb set isdelete=0 where `id`=?";
		int rows=update(sql,id);
		return rows;
	}

	@Override
	public int update(LicenseTb license) {
		String sql="update license_tb set licsType=?,state=? where `id`=?";
		int rows=update(sql,license.getLicsType(),license.getState(),license.getId());
		return rows;
	}

	@Override
	public LicenseTb selectById(int id) {
		String sql="select * from license_tb where id=?";
		ResultSet rs=null;
		try {
				rs=query(sql, id);
				if(rs.next()){
				LicenseTb licenseTb=new LicenseTb();
				licenseTb.setId(rs.getInt("id"));
				licenseTb.setLicsType(rs.getString("licsType"));
				licenseTb.setState(rs.getInt("state"));
				licenseTb.setIsdelete(rs.getInt("isdelete"));
				return licenseTb;
				}
			}catch (Exception e) {
				e.printStackTrace();
			}finally{
				closeAll(rs,ps,con);
			}
		return null;
	}

	@Override
	public List<LicenseTb> selectAll(Page page, Object licsType) {
		List<Object> params=new ArrayList<Object>();
		StringBuffer sql=new StringBuffer("select * from license_tb where isdelete=1");
		if(licsType!=null&&!"".equals(licsType)){
			sql.append(" and licsType like ?");
			params.add("%"+licsType+"%");	
		}
		    sql.append(" order by `id` desc");
		    sql.append(" limit ?,?");
		// 向集合中加入分页的参数
			params.add((page.getPageNow()-1) *page.getPageSize());
			params.add(page.getPageSize());
				
		ResultSet rs=null;
		List<LicenseTb> licenseTbList=new ArrayList<LicenseTb>();
		try {
			rs=query(sql.toString(),params.toArray());
			while(rs.next()){
				LicenseTb licenseTb=new LicenseTb();
				licenseTb.setId(rs.getInt("id"));
				licenseTb.setLicsType(rs.getString("licsType"));
				licenseTb.setState(rs.getInt("state"));
				licenseTb.setIsdelete(rs.getInt("isdelete"));
				licenseTbList.add(licenseTb);
			}
			return licenseTbList;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeAll(rs,ps,con);
		}	
		return null;
	}

	@Override
	public int selectPageSize(Object licsType) {
		StringBuffer sql=new StringBuffer("select count(1) as pageSize from license_tb where isdelete=1");
		List<Object> params=new ArrayList<Object>();
		if(licsType!=null&&!"".equals(licsType)){
			sql.append(" and licsType like ?");
			params.add("%"+licsType+"%");	
		}
		ResultSet rs=null;
		try {
			rs=query(sql.toString(),params.toArray());
			if(rs.next()){
				int pageSize=rs.getInt("pageSize");
				return pageSize;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeAll(rs,ps,con);
		}
		return 0;
	}

	@Override
	public List<LicenseTb> select() {

		String sql="select id,licsType,state,isdelete from license_tb where state=1 and isdelete=1";
		ResultSet rs=null;
		List<LicenseTb> licenseTbList=new ArrayList<LicenseTb>();
		try {
			rs=query(sql);
			while(rs.next()){
				LicenseTb licenseTb=new LicenseTb();
				licenseTb.setId(rs.getInt("id"));
				licenseTb.setLicsType(rs.getString("licsType"));
				licenseTb.setState(rs.getInt("state"));
				licenseTb.setIsdelete(rs.getInt("isdelete"));
				licenseTbList.add(licenseTb);
			}
			return licenseTbList;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeAll(rs,ps,con);
		}	
		return null;
	}

}
