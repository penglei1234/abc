package com.dao.impl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.BaseDao;
import com.dao.FinaceTbDao;
import com.entity.CustomerTypeTb;
import com.entity.FinaceTb;
import com.tool.Page;

public class FinaceTbDaoImpl extends BaseDao implements FinaceTbDao {

	@Override
	public List<FinaceTb> selectFinaceTb() {

		String sql="select * from finace_tb where state=1";
		List<FinaceTb> finaceTbList=new ArrayList<FinaceTb>();
		ResultSet rs=null;
		try {
			rs=query(sql);
			while(rs.next()){
				
				FinaceTb finaceTb=new FinaceTb();
				finaceTb.setId(rs.getInt("id"));
				finaceTb.setFinaceType(rs.getString("finaceType"));
				finaceTb.setState(rs.getInt("state"));
				finaceTb.setIsdelete(rs.getInt("isdelete"));
				
				finaceTbList.add(finaceTb);
			}
			return finaceTbList;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeAll(rs, ps, con);
		}
		return null;
	}
    /*增加*/
	@Override
	public int insert(FinaceTb finace) {
		String sql="insert into finace_tb(finaceType,state) values(?,?)" ;
		int rows=update(sql,finace.getFinaceType(),finace.getState());
		return rows;
	}
    /*删除*/
	@Override
	public int delete(int id) {
		String sql="update finace_tb set isdelete=0 where `id`=?";
		int rows=update(sql,id);
		return rows;
	}
     /*修改*/
	@Override
	public int update(FinaceTb finace) {
		String sql="update finace_tb set finaceType=?,state=? where `id`=?";
		int rows=update(sql,finace.getFinaceType(),finace.getState(),finace.getId());
		return rows;
	}
   /* 查询*/
	@Override
	public FinaceTb selectById(int id) {
		String sql="select * from finace_tb where id=?";
		ResultSet rs=null;
		try {
				rs=query(sql, id);
				if(rs.next()){
				FinaceTb finaceTb=new FinaceTb();
				finaceTb.setFinaceType(rs.getString("finaceType"));
				finaceTb.setState(rs.getInt("state"));
				finaceTb.setIsdelete(rs.getInt("isdelete"));
				finaceTb.setId(rs.getInt("id"));
				return finaceTb;
				}
			}catch (Exception e) {
				e.printStackTrace();
			}finally{
				closeAll(rs,ps,con);
			}
		return null;
	}
    /*查询所有，带有分页，模糊查询*/
	@Override
	public List<FinaceTb> selectAll(Page page, Object finaceType) {
		List<Object> params=new ArrayList<Object>();
		StringBuffer sql=new StringBuffer("select * from finace_tb where isdelete=1");
		if(finaceType!=null&&!"".equals(finaceType)){
			sql.append(" and finaceType like ?");
			params.add("%"+finaceType+"%");	
		}
		    sql.append(" order by `id` desc");
		    sql.append(" limit ?,?");
		// 向集合中加入分页的参数
			params.add((page.getPageNow()-1) *page.getPageSize());
			params.add(page.getPageSize());
				
		ResultSet rs=null;
		List<FinaceTb> finaceTbList=new ArrayList<FinaceTb>();
		try {
			rs=query(sql.toString(),params.toArray());
			while(rs.next()){
				FinaceTb finaceTb=new FinaceTb();
				finaceTb.setId(rs.getInt("id"));
				finaceTb.setFinaceType(rs.getString("finaceType"));
				finaceTb.setState(rs.getInt("state"));
				finaceTb.setIsdelete(rs.getInt("isdelete"));
				finaceTbList.add(finaceTb);
			}
			return finaceTbList;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeAll(rs,ps,con);
		}	
		return null;
	}
    /*查询所有的行数*/
	@Override
	public int selectPageSize(Object finaceType) {
		StringBuffer sql=new StringBuffer("select count(1) as pageSize from finace_tb where isdelete=1");
		List<Object> params=new ArrayList<Object>();
		if(finaceType!=null&&!"".equals(finaceType)){
			sql.append(" and finaceType like ?");
			params.add("%"+finaceType+"%");	
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
	

}
