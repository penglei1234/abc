package com.service.impl;

import java.util.List;

import com.dao.FinaceTbDao;
import com.dao.impl.FinaceTbDaoImpl;
import com.entity.FinaceTb;
import com.service.FinaceTbService;
import com.tool.Page;

public class FinaceTbServiceImpl implements FinaceTbService {

	private FinaceTbDao finaceTbDao=new FinaceTbDaoImpl();
	
	@Override
	public List<FinaceTb> selectFinaceTb() {
		
		return finaceTbDao.selectFinaceTb();
	}
	@Override
	public int insert(FinaceTb finace) {
		
		return finaceTbDao.insert(finace);
	}
	@Override
	public int delete(int id) {
		
		return finaceTbDao.delete(id);
	}
	@Override
	public int update(FinaceTb finace) {
		
		return finaceTbDao.update(finace);
	}
	@Override
	public FinaceTb selectById(int id) {
		
		return finaceTbDao.selectById(id);
	}
	@Override
	public List<FinaceTb> selectAll(Page page, Object finaceType) {
		
		return finaceTbDao.selectAll(page, finaceType);
	}
	@Override
	public int selectPageSize(Object finaceType) {
		
		return finaceTbDao.selectPageSize(finaceType);
	}

}
