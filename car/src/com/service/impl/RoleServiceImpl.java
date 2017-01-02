package com.service.impl;

import java.util.List;

import com.dao.impl.RoleDaoImpl;
import com.entity.Role;
import com.service.RoleService;

public class RoleServiceImpl implements RoleService{

	@Override
	public List<Role> query() {
		// TODO Auto-generated method stub
		return new RoleDaoImpl().query();
	}

}
