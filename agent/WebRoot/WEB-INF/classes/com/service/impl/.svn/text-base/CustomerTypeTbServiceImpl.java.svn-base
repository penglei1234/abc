package com.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.dao.CustomerTypeTbDao;
import com.dao.impl.CustomerTypeTbDaoImpl;
import com.entity.CustomerTypeTb;
import com.tool.Page;
import com.service.CustomerTypeTbService;

public class CustomerTypeTbServiceImpl implements CustomerTypeTbService{
	
		private CustomerTypeTbDao customerTypeTbDao=new CustomerTypeTbDaoImpl();
		 /*增加客户类型*/
		@Override
		public int insert(CustomerTypeTb customer) {
			
			return customerTypeTbDao.insert(customer);
		}
		
		/*删除客户类型，逻辑删除*/
		@Override
		public int delete(int id) {
			
			return customerTypeTbDao.delete(id);
		}
		
		/*更改客户类型*/
		@Override
		public int update(CustomerTypeTb customer) {
			
			return customerTypeTbDao.update(customer);
		}
		  /*根据id获取单个客户类型*/
		@Override
		public CustomerTypeTb selectByTid(int id) {
			
			return customerTypeTbDao.selectByTid(id);
		}
		
		 /*
	     * 分页查询，获取所有客户类型，并实现模糊查询
	     * */
		@Override
		public List<CustomerTypeTb> selectAll(Page page, Object cstmType) {
			
			return customerTypeTbDao.selectAll(page, cstmType);
		}
		
		/*获取客户类型的行数*/
		@Override
		public int selectPageSize(Object cstmType) {
			
			return customerTypeTbDao.selectPageSize(cstmType);
		}
        /*不分页，不模糊查询的查询所有的客户类型*/
		@Override
		public List<CustomerTypeTb> selectA() {
			
			return customerTypeTbDao.selectA();
		}
		
		
		

}
