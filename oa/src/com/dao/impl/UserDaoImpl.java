package com.dao.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dao.UserDao;
import com.entity.Test;

@Repository("userDao")
public class UserDaoImpl implements UserDao {
	@Autowired
	@Qualifier("session")
	private SqlSessionTemplate session;
	public void setSession(SqlSessionTemplate session) {
		this.session = session;
	}

	@Override
	public Test selectUserById(int id) {
		// TODO Auto-generated method stub
		return session.selectOne("com.dao.UserDao.selectUserById",id);
	}

}
