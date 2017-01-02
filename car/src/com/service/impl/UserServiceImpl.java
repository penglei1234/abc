package com.service.impl;

import java.util.List;

import com.dao.impl.UserDaoImpl;
import com.entity.FenYe;
import com.entity.User;
import com.service.UserService;

public class UserServiceImpl implements UserService{

	@Override
	public User login(String username, String password) {
		// TODO Auto-generated method stub
		return new UserDaoImpl().login(username, password);
	}

	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		return new UserDaoImpl().addUser(user);
	}

	@Override
	public int deleteUserById(int id) {
		// TODO Auto-generated method stub
		
		return new UserDaoImpl().deleteUserById(id);
	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return new UserDaoImpl().updateUser(user);
	}

	@Override
	public User selectUserById(int id) {
		// TODO Auto-generated method stub
		return new UserDaoImpl().selectUserById(id);
	}

	@Override
	public List<User> queryUser(FenYe fenye,User user) {
		// TODO Auto-generated method stub
		return new UserDaoImpl().queryUser(fenye,user);
	}

	@Override
	public User selectByNameAndTel(String name, String tel) {
		// TODO Auto-generated method stub
		return new UserDaoImpl().selectByNameAndTel(name, tel);
	}

	@Override
	public void batchDelete(int[] id) {
		// TODO Auto-generated method stub
		new UserDaoImpl().batchDelete(id);
	}

	@Override
	public List<User> exportUser(int[] id) {
		// TODO Auto-generated method stub
		return new UserDaoImpl().exportUser(id);
	}
	
}
