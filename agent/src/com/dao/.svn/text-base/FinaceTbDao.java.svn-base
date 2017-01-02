package com.dao;

import java.util.List;

import com.entity.FinaceTb;
import com.tool.Page;

public interface FinaceTbDao {
	/*查询所有*/
	public List<FinaceTb> selectFinaceTb();
	
   /*增加财务类型的功能*/
	public int insert(FinaceTb finace);
	
	/*删除财务类型的功能*/
	public int delete(int id);
	
	/*修改财务类型*/
	public int update(FinaceTb finace);
	
	/*查询单个财务类型*/
	public FinaceTb selectById(int id);
	
	/*查询所有的财务类型*/
	public List<FinaceTb> selectAll(Page page,Object finaceType);
	
	 /*查询顾客类型的行数*/
	public int selectPageSize(Object finaceType);
	
}
