package com.service;

import java.util.List;

import com.entity.CustomerTypeTb;
import com.tool.*;

public interface CustomerTypeTbService {

	/*增加顾客类型*/
public int insert(CustomerTypeTb customer);
   /*删除顾客类型*/
public int delete(int id);
   /*修改顾客类型*/
public int update(CustomerTypeTb customer);
 /*  通过id查询顾客类型*/
public CustomerTypeTb selectByTid(int id);
  /* 分页，并通过模糊查询顾客类型*/
public List<CustomerTypeTb> selectAll(Page page,Object cstmType);
    /*查询顾客类型的行数*/
public int selectPageSize(Object cstmType);
    /*查询所有客户类型*/
public List<CustomerTypeTb> selectA();

}
