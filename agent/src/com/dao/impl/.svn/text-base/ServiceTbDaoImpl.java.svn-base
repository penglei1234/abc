package com.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.BaseDao;
import com.dao.ServiceTbDao;
import com.entity.FinaceTb;
import com.entity.ServiceTb;
import com.tool.Page;

public class ServiceTbDaoImpl extends BaseDao implements ServiceTbDao {

	@Override
	public double selectMoneyBySvcType(String svcType) {
		// TODO Auto-generated method stub
		ResultSet rs=null;
		String sql="select money from service_tb where svcType=?";
		try {
			rs=query(sql, svcType);
			if(rs.next()){
				double money=rs.getDouble("money");
				return money;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(rs, ps, con);
		}
		return -1;
	}

	@Override
	public List<ServiceTb> selectServiceTb() {
		String sql="select * from service_tb";
		List<ServiceTb> serviceTbList=new ArrayList<ServiceTb>();
		ResultSet rs=null;
		try {
			rs=query(sql);
			while(rs.next()){
				
				ServiceTb serviceTb=new ServiceTb();
				serviceTb.setId(rs.getInt("id"));
				serviceTb.setSvcType(rs.getString("svcType"));
				serviceTb.setState(rs.getInt("state"));
				serviceTb.setMoney(rs.getDouble("money"));
				serviceTb.setCaozuo(rs.getInt("caozuo"));
				serviceTbList.add(serviceTb);
			}
			return serviceTbList;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int insert(ServiceTb service) {
		String sql="insert into service_tb(svcType,money,state) values(?,?,?)" ;
		int rows=update(sql,service.getSvcType(),service.getMoney(),service.getState());
		return rows;
	}

	@Override
	public int delete(int id) {
		String sql="update service_tb set caozuo=0 where `id`=?";
		int rows=update(sql,id);
		return rows;
	}

	@Override
	public int turn(int id) {
		
		return 0;
	}

	@Override
	public int update(ServiceTb service) {
		String sql="update service_tb set svcType=?,money=?,state=? where `id`=?";
		int rows=update(sql,service.getSvcType(),service.getMoney(),service.getState());
		return rows;
	}

	@Override
	public ServiceTb selectById(int id) {
		String sql="select * from service_tb where id=?";
		ResultSet rs=null;
		try {
				rs=query(sql, id);
				if(rs.next()){
				ServiceTb serviceTb=new ServiceTb();
				serviceTb.setId(rs.getInt("id"));
				serviceTb.setSvcType(rs.getString("svcType"));
				serviceTb.setState(rs.getInt("state"));
				serviceTb.setMoney(rs.getDouble("money"));
				serviceTb.setCaozuo(rs.getInt("caozuo"));
				return serviceTb;
				}
			}catch (Exception e) {
				e.printStackTrace();
			}finally{
				closeAll(rs,ps,con);
			}
		return null;
	}

	@Override
	public List<ServiceTb> selectAll(Page page, Object svcType) {
		List<Object> params=new ArrayList<Object>();
		StringBuffer sql=new StringBuffer("select * from service_tb where caozuo=1");
		if(svcType!=null&&!"".equals(svcType)){
			sql.append(" and svcType like ?");
			params.add("%"+svcType+"%");	
		}
		    sql.append(" order by `id` desc");
		    sql.append(" limit ?,?");
		// 向集合中加入分页的参数
			params.add((page.getPageNow()-1) *page.getPageSize());
			params.add(page.getPageSize());
				
		ResultSet rs=null;
		List<ServiceTb> ServiceTbList=new ArrayList<ServiceTb>();
		try {
			rs=query(sql.toString(),params.toArray());
			while(rs.next()){
				ServiceTb serviceTb=new ServiceTb();
				serviceTb.setId(rs.getInt("id"));
				serviceTb.setSvcType(rs.getString("svcType"));
				serviceTb.setState(rs.getInt("state"));
				serviceTb.setMoney(rs.getDouble("money"));
				serviceTb.setCaozuo(rs.getInt("caozuo"));
				ServiceTbList.add(serviceTb);
			}
			return ServiceTbList;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeAll(rs,ps,con);
		}	
		return null;
	}

	@Override
	public int selectPageSize(Object svcType) {
		StringBuffer sql=new StringBuffer("select count(1) as pageSize from service_tb where caozuo=1");
		List<Object> params=new ArrayList<Object>();
		if(svcType!=null&&!"".equals(svcType)){
			sql.append(" and svcType like ?");
			params.add("%"+svcType+"%");	
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
