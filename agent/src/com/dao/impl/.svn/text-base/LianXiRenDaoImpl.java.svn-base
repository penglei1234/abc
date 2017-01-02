package com.dao.impl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.BaseDao;
import com.dao.LianXiRenDao;
import com.entity.LianXiRen;

public class LianXiRenDaoImpl extends BaseDao implements LianXiRenDao {

	@Override
	public List<LianXiRen> selectLianXiRenByCid(int cid) {
		
		String sql="select * from lianxiren where cid=?";
		ResultSet rs=null;
		List<LianXiRen> lianXiRenList=new ArrayList<LianXiRen>();
		try {
			rs=query(sql, cid);
			while(rs.next()){
				
				LianXiRen lianXiRen=new LianXiRen();
				lianXiRen.setLxid(rs.getInt("lxid"));
				lianXiRen.setLxname(rs.getString("lxname"));
				lianXiRen.setPhone(rs.getString("phone"));
				lianXiRen.setFax(rs.getString("fax"));
				lianXiRen.setEmail(rs.getString("email"));
				lianXiRen.setDepartment(rs.getString("department"));
				lianXiRen.setCid(rs.getInt("cid"));
				
				lianXiRenList.add(lianXiRen);
			}
			return lianXiRenList;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			closeAll(rs, ps, con);
		}
		return null;
	}

}
