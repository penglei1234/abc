package com.dao.impl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.BaseDao;
import com.dao.CustomerTypeTbDao;
import com.entity.CustomerTypeTb;
import com.entity.FinaceTb;
import com.tool.Page;


public class CustomerTypeTbDaoImpl extends BaseDao implements CustomerTypeTbDao{

	 /*增加客户类型*/
		@Override
		public int insert(CustomerTypeTb customer) {
			String sql="insert into customertype_tb(cstmType,state) values(?,?)";
			int rows=update(sql,customer.getCstmType(),customer.getState());
			return rows;
		}
		
		/*删除客户类型，逻辑删除*/
		@Override
		public int delete(int id) {
			String sql= "update customertype_tb set isdelete=0 where `tid`=?";
			int rows=update(sql,id);
			return rows;
		}
		
		/*更改客户类型*/
		@Override
		public int update(CustomerTypeTb customer) {
			String sql="update customertype_tb set cstmType=?,state=? where `tid`=?";
			int rows=update(sql,customer.getCstmType(),customer.getState(),customer.getTid());
			return rows;
		}
		
	   /*根据id获取单个客户类型*/
		@Override
		public CustomerTypeTb selectByTid(int id) {
			String sql="select * from customertype_tb where tid=?";
			ResultSet rs=null;
			try {
				rs=query(sql, id);
				if(rs.next()){
					CustomerTypeTb customerTypeTb=new CustomerTypeTb();
					customerTypeTb.setCstmType(rs.getString("cstmType"));
					customerTypeTb.setState(rs.getInt("state"));
					customerTypeTb.setIsdelete(rs.getInt("isdelete"));
					customerTypeTb.setTid(rs.getInt("tid"));
					return customerTypeTb;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				closeAll(rs, ps, con);
			}
			return null;
		}
		
	    /*
	     * 分页查询，获取所有客户类型，并实现模糊查询
	     * */
		
		@Override
		public List<CustomerTypeTb> selectAll(Page page, Object cstmType) {
			List<Object> params=new ArrayList<Object>();
			StringBuffer sql=new StringBuffer("select * from customertype_tb where isdelete=1");
			if(cstmType!=null&&!"".equals(cstmType)){
				sql.append(" and cstmType like ?");
				params.add("%"+cstmType+"%");	
			}
			    sql.append(" order by `tid` desc");
			    sql.append(" limit ?,?");
			// 向集合中加入分页的参数
				params.add((page.getPageNow()-1) *page.getPageSize());
				params.add(page.getPageSize());
					
			ResultSet rs=null;
			List<CustomerTypeTb> customerTypeTbList=new ArrayList<CustomerTypeTb>();
			try {
				rs=query(sql.toString(),params.toArray());
				while(rs.next()){
					CustomerTypeTb customerTypeTb=new CustomerTypeTb();
					customerTypeTb.setTid(rs.getInt("tid"));
					customerTypeTb.setCstmType(rs.getString("cstmType"));
					customerTypeTb.setState(rs.getInt("state"));
					customerTypeTb.setIsdelete(rs.getInt("isdelete"));
					customerTypeTbList.add(customerTypeTb);
				}
				return customerTypeTbList;
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				closeAll(rs,ps,con);
			}
			return null;
		}
	    
		/*获取客户类型的行数*/
		@Override
		public int selectPageSize(Object cstmType) {
			StringBuffer sql=new StringBuffer("select count(1) as pageSize from customertype_tb where isdelete=1");
			List<Object> params=new ArrayList<Object>();
			if(cstmType!=null&&!"".equals(cstmType)){
				sql.append(" and cstmType like ?");
				params.add("%"+cstmType+"%");	
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

		/*不分页，不模糊查询*/
		@Override
		public List<CustomerTypeTb> selectA() {
			List<CustomerTypeTb> customerTypeTbList=new ArrayList<CustomerTypeTb>();
			String sql="select *from customertype_tb";
			ResultSet rs=null;
			try {
				
				rs=query(sql);
				while(rs.next()){
					CustomerTypeTb customerTypeTb=new CustomerTypeTb();
					customerTypeTb.setTid(rs.getInt("tid"));
					customerTypeTb.setCstmType(rs.getString("cstmType"));
					customerTypeTb.setState(rs.getInt("state"));
					customerTypeTb.setIsdelete(rs.getInt("isdelete"));
					customerTypeTbList.add(customerTypeTb);	
				}
				return customerTypeTbList;
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				closeAll(rs,ps,con);
			}
			return null;
		}

}
