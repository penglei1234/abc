package com.service.impl;

import java.util.List;

import com.dao.ServiceTbDao;
import com.dao.impl.ServiceTbDaoImpl;
import com.entity.ServiceTb;
import com.service.ServiceTbService;
import com.tool.Page;

public class ServiceTbServiceImpl implements ServiceTbService {
	ServiceTbDao serviceTbDao=new ServiceTbDaoImpl();

	@Override
	public double selectMoneyBySvcType(String svcType) {
		// TODO Auto-generated method stub
		return serviceTbDao.selectMoneyBySvcType(svcType);
	}
	@Override
	public List<ServiceTb> selectServiceTb() {
		
		return serviceTbDao.selectServiceTb();
	}

	@Override
	public int insert(ServiceTb service) {
		
		return serviceTbDao.insert(service);
	}
	
	@Override
	public int delete(int id) {
		
		return serviceTbDao.delete(id);
	}

	@Override
	public int turn(int id) {
		
		return serviceTbDao.turn(id);
	}

	@Override
	public int update(ServiceTb service) {
		
		return serviceTbDao.update(service);
	}

	@Override
	public ServiceTb selectById(int id) {
		
		return serviceTbDao.selectById(id);
	}

	@Override
	public List<ServiceTb> selectAll(Page page, Object svcType) {
		
		return serviceTbDao.selectAll(page, svcType);
	}

	@Override
	public int selectPageSize(Object svcType) {
		
		return serviceTbDao.selectPageSize(svcType);
	}
}
