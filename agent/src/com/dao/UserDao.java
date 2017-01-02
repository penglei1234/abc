package com.dao;

import java.util.List;

import com.entity.FinaceTb;
import com.entity.Prepayment;
import com.entity.Role;
import com.entity.User;
import com.tool.Page;

public interface UserDao {
	// 插入用户
	public int insertUser(User user);

	// 根据id查询用户
	public User selectUserById(int id);

	// 根据用户的真名查询用户
	public User selectUserByUserRealName(String userRealName);

	// 查询最大的用户ID(用于赋角色)
	public int selectMaxUserId();

	// 用户管理界面(查询用户)
	public List<User> selectAllUser(Page page, String user_realname,
			String user_state);

	// 查询总行数
	public int selectAllRows(String user_realname, String user_state);

	// 更新用户
	public int updateUserByUserId(User user);

	// 删除用户(状态)
	public int deleteUserByUserId(int userId);

	// 页面选择 是否禁用
	public int updateUserState(int userId);

	// 查询预付款界面
	public List<Prepayment> selectAllInfo(int userId);

	// 更新登录用户信息
	public int updateUserById(User user);
	
	// 更改密码
	public int updatepassword(String password,int id);
	
	// 查询预付款界面
	public List<Prepayment> selectAllInfo(int userId, Page page,
			String finaceType, String startDate, String endDate);

	// 查询Prepayment所有的行数
	public int selectPrepaymentRows(int userId, String finaceType,
			String startDate, String endDate);

	// 查询所有的财务类型
	public List<String> selectAllFinaceType();

	// 登录(根据用户登录名，密码查询用户)
	public User selectUserByUserLogNameAndUserPassword(String userLogName,
			String userPassword);

	// 导出excel
	public List<Prepayment> selectInfoById(int[] preid);
}
