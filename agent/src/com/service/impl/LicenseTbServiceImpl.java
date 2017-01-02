package com.service.impl;

import java.util.List;

import com.dao.LicenseTbDao;
import com.dao.impl.LicenseTbDaoImpl;
import com.entity.LicenseTb;
import com.service.LicenseTbService;
import com.tool.Page;

public class LicenseTbServiceImpl implements LicenseTbService {

	private LicenseTbDao licenseTbDao=new LicenseTbDaoImpl();
	@Override
	public LicenseTb selectLicenseTbById(int id) {
		// TODO Auto-generated method stub
		return licenseTbDao.selectLicenseTbById(id);
	}
	@Override
	public int insert(LicenseTb license) {
		
		return licenseTbDao.insert(license);
	}
	@Override
	public int delete(int id) {
	
		return licenseTbDao.delete(id);
	}
	@Override
	public int update(LicenseTb license) {
		
		return licenseTbDao.update(license);
	}
	@Override
	public LicenseTb selectById(int id) {
		
		return licenseTbDao.selectById(id);
	}
	@Override
	public List<LicenseTb> selectAll(Page page, Object licsType) {
		
		return licenseTbDao.selectAll(page, licsType);
	}
	@Override
	public int selectPageSize(Object licsType) {
	
		return licenseTbDao.selectPageSize(licsType);
	}
	@Override
	public List<LicenseTb> select() {

		return licenseTbDao.select();
	}

}
