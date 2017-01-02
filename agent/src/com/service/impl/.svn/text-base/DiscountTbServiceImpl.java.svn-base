package com.service.impl;

import java.util.List;

import com.dao.DiscountTbDao;
import com.dao.impl.DiscountTbDaoImpl;
import com.entity.DiscountTb;
import com.service.DiscountTbService;
import com.tool.Page;

public class DiscountTbServiceImpl implements DiscountTbService{
	 private DiscountTbDao discountTbDao=new DiscountTbDaoImpl();
	@Override
	public int insert(DiscountTb discount) {
		
		return discountTbDao.insert(discount);
	}

	@Override
	public int delete(int id) {
		
		return discountTbDao.delete(id);
	}

	@Override
	public int update(DiscountTb discount) {
	
		return discountTbDao.update(discount);
	}

	@Override
	public DiscountTb selectById(int id) {
		
		return discountTbDao.selectById(id);
	}

	@Override
	public List<DiscountTb> selectAll(Page page, Object dsctType) {
		
		return discountTbDao.selectAll(page, dsctType);
	}

	@Override
	public int selectPageSize(Object dsctType) {
		
		return discountTbDao.selectPageSize(dsctType);
	}

}
