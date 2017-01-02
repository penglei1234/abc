package com.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import com.dao.BaseDao;
import com.dao.PrepaymentDao;
import com.entity.Prepayment;

public class PrepaymentDaoImpl extends BaseDao implements PrepaymentDao {

	@Override
	public Prepayment selectPrepaymentByCname(String cname){
		// TODO Auto-generated method stub
		ResultSet rs=null;
		String sql="select * from prepayment where cname=?";
		try {
			rs=query(sql, cname);
			if(rs.next()){
				Prepayment prepayment=new Prepayment();
				prepayment.setIdbalance(rs.getDouble("idbalance"));
				prepayment.setCname(cname);
				return prepayment;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(rs, ps, con);
		}
		return null;
	}
}
