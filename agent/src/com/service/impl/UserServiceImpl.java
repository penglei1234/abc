package com.service.impl;

import java.util.List;

import com.dao.UserDao;
import com.dao.impl.UserDaoImpl;
import com.entity.Prepayment;
import com.entity.Role;
import com.entity.User;
import com.service.UserService;
import com.tool.Page;

public class UserServiceImpl implements UserService {
	UserDao userdao=new UserDaoImpl();
	public int insertUser(User user) {
		// TODO Auto-generated method stub
		return userdao.insertUser(user);
	}
	@Override
	public User selectUserById(int id) {
		// TODO Auto-generated method stub
		return userdao.selectUserById(id);
	}
	@Override
	public User selectUserByUserRealName(String userRealName) {
		// TODO Auto-generated method stub
		return userdao.selectUserByUserRealName(userRealName);
	}
	@Override
	public int selectMaxUserId() {
		// TODO Auto-generated method stub
		return userdao.selectMaxUserId();
	}
	@Override
	public List<User> selectAllUser(Page page,String user_realname,String user_state) {
		// TODO Auto-generated method stub
		return userdao.selectAllUser(page,user_realname,user_state);
	}
	@Override
	public int selectAllRows(String user_realname,String user_state) {
		// TODO Auto-generated method stub
		return userdao.selectAllRows(user_realname,user_state);
	}
	@Override
	public int updateUserByUserId(User user) {
		// TODO Auto-generated method stub
		return userdao.updateUserByUserId(user);
	}
	@Override
	public int deleteUserByUserId(int userId) {
		// TODO Auto-generated method stub
		return userdao.deleteUserByUserId(userId);
	}
	@Override
	public int updateUserState(int userId) {
		// TODO Auto-generated method stub
		return userdao.updateUserState(userId);
	}
	@Override
	public User selectUserByUserLogNameAndUserPassword(String userLogName,
			String userPassword) {
		// TODO Auto-generated method stub
		return userdao.selectUserByUserLogNameAndUserPassword(userLogName, userPassword);
	}
	@Override
	public List<String> selectAllFinaceType() {
		// TODO Auto-generated method stub
		return userdao.selectAllFinaceType();
	}
	@Override
	public List<Prepayment> selectAllInfo(int userId,Page page,
			String finaceType, String startDate, String endDate) {
		// TODO Auto-generated method stub
		return userdao.selectAllInfo(userId,page, finaceType, startDate, endDate);
	}
	@Override
	public int selectPrepaymentRows(int userId,String finaceType, String startDate,
			String endDate) {
		// TODO Auto-generated method stub
		return userdao.selectPrepaymentRows(userId,finaceType, startDate, endDate);
	}
	@Override
	public List<Prepayment> selectInfoById(int[] preid) {
		// TODO Auto-generated method stub
		return userdao.selectInfoById(preid);
	}
	@Override
	public int updateUserById(User user) {
		// TODO Auto-generated method stub
		return userdao.updateUserById(user);
	}
	@Override
	public int updatepassword(String password, int id) {
		// TODO Auto-generated method stub
		return userdao.updatepassword(password, id);
	}
}
