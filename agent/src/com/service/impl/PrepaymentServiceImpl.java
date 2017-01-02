package com.service.impl;

import com.dao.PrepaymentDao;
import com.dao.impl.PrepaymentDaoImpl;
import com.entity.Prepayment;
import com.service.PrepaymentService;

public class PrepaymentServiceImpl implements PrepaymentService {
	PrepaymentDao prepaymentDao=new PrepaymentDaoImpl();

	@Override
	public Prepayment selectPrepaymentByCname(String cname) {
		// TODO Auto-generated method stub
		return prepaymentDao.selectPrepaymentByCname(cname);
	}
	
}
