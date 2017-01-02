package com.dao;

import java.util.List;

import com.entity.FinaceTb;
import com.entity.ServiceTb;
import com.tool.Page;

public interface ServiceTbDao {
	//根据服务类型（svcType）查询金额（money）
	public double selectMoneyBySvcType(String svcType);
	
	/*查询所有*/
	public List<ServiceTb> selectServiceTb();
	
   /*增加类型的功能*/
	public int insert(ServiceTb service);
	
	/*删除类型的功能*/
	public int delete(int id);
	
	/*实现转换禁用-启用的功能 */
	public int turn(int id);
	
	/*修改类型*/
	public int update(ServiceTb service);
	
	/*查询单个类型*/
	public ServiceTb selectById(int id);
	
	/*查询所有的类型*/
	public List<ServiceTb> selectAll(Page page,Object svcType);
	
	 /*查询类型的行数*/
	public int selectPageSize(Object svcType);
}
