package com.dao.impl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.BaseDao;
import com.dao.DiscountTbDao;
import com.entity.DiscountTb;
import com.entity.LicenseTb;
import com.tool.Page;

public class DiscountTbDaoImpl extends BaseDao implements DiscountTbDao {

	@Override
	public int insert(DiscountTb discount) {
		String sql="insert into discount_tb(dsctType,dsctYear,realYear,state) values(?,?,?,?)" ;
		int rows=update(sql,discount.getDsctType(),discount.getDsctYear(),discount.getRealYear(),discount.getState());
		return rows;
	}

	@Override
	public int delete(int id) {
		String sql="update discount_tb set isdelete=0 where `id`=?";
		int rows=update(sql,id);
		return rows;
	}

	@Override
	public int update(DiscountTb discount) {
		String sql="update discount_tb set dsctType=?,dsctYear=?,realYear=?,state=? where `id`=?";
		int rows=update(sql,discount.getDsctType(),discount.getDsctYear(),discount.getRealYear(),discount.getState(),discount.getId());
		return rows;
	}

	@Override
	public DiscountTb selectById(int id) {
		String sql="select * from discount_tb where id=?";
		ResultSet rs=null;
		try {
				rs=query(sql, id);
				if(rs.next()){
				DiscountTb discountTb=new DiscountTb();
				discountTb.setId(rs.getInt("id"));
				discountTb.setDsctType(rs.getString("dsctType"));
				discountTb.setDsctYear(rs.getInt("dsctYear"));
				discountTb.setRealYear(rs.getInt("realYear"));
				discountTb.setState(rs.getInt("state"));
				discountTb.setIsdelete(rs.getInt("isdelete"));
				return discountTb;
				}
			}catch (Exception e) {
				e.printStackTrace();
			}finally{
				closeAll(rs,ps,con);
			}
		return null;
	}

	@Override
	public List<DiscountTb> selectAll(Page page, Object dsctType) {
		List<Object> params=new ArrayList<Object>();
		StringBuffer sql=new StringBuffer("select * from discount_tb where isdelete=1");
		if(dsctType!=null&&!"".equals(dsctType)){
			sql.append(" and dsctType like ?");
			params.add("%"+dsctType+"%");	
		}
		    sql.append(" order by `id` desc");
		    sql.append(" limit ?,?");
		// 向集合中加入分页的参数
			params.add((page.getPageNow()-1) *page.getPageSize());
			params.add(page.getPageSize());
				
		ResultSet rs=null;
		List<DiscountTb> discountTbList=new ArrayList<DiscountTb>();
		try {
			rs=query(sql.toString(),params.toArray());
			while(rs.next()){
				DiscountTb discountTb=new DiscountTb();
				discountTb.setId(rs.getInt("id"));
				discountTb.setDsctType(rs.getString("dsctType"));
				discountTb.setDsctYear(rs.getInt("dsctYear"));
				discountTb.setRealYear(rs.getInt("realYear"));
				discountTb.setState(rs.getInt("state"));
				discountTb.setIsdelete(rs.getInt("isdelete"));
				discountTbList.add(discountTb);
			}
			return discountTbList;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeAll(rs,ps,con);
		}	
		return null;
	}

	@Override
	public int selectPageSize(Object dsctType) {
		StringBuffer sql=new StringBuffer("select count(1) as pageSize from discount_tb where isdelete=1");
		List<Object> params=new ArrayList<Object>();
		if(dsctType!=null&&!"".equals(dsctType)){
			sql.append(" and dsctType like ?");
			params.add("%"+dsctType+"%");	
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
