package com.dao;

import java.util.List;

import com.entity.FinaceTb;
import com.entity.LicenseTb;
import com.tool.Page;

public interface LicenseTbDao {
	
	//根据licenseid查询LicenseTb对象
	public LicenseTb selectLicenseTbById(int id);
	
	 /*增加类型的功能*/
		public int insert(LicenseTb license);
		
		/*删除类型的功能*/
		public int delete(int id);
		
		/*修改类型*/
		public int update(LicenseTb license);
		
		/*查询单个类型*/
		public LicenseTb selectById(int id);
		
		/*查询所有的类型*/
		public List<LicenseTb> selectAll(Page page,Object licsType);
		
		 /*查询类型的行数*/
		public int selectPageSize(Object licsType);
		
		//查询所有的证件类型
		public List<LicenseTb> select();
}
