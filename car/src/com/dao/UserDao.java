package com.dao;

import com.entity.FenYe;
import com.entity.User;
import java.util.*;
public interface UserDao {
	public User login(String username,String password);
	public int addUser(User user);
	public int deleteUserById(int id);
	public int updateUser(User user);
	public User selectUserById(int id);
	public List<User> queryUser(FenYe fenye,User user);
	public User selectByNameAndTel(String name,String tel);
	public void batchDelete(int[] id);
	public List<User> exportUser(int[] id);
}
