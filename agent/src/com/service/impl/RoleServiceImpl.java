package com.service.impl;

import java.util.List;

import com.dao.RoleDao;
import com.dao.impl.RoleDaoImpl;
import com.entity.Role;
import com.service.RoleService;
import com.tool.Page;

public class RoleServiceImpl implements RoleService {
	RoleDao roleDao=new RoleDaoImpl();
	public int insertRole(Role role) {
		// TODO Auto-generated method stub
		return roleDao.insertRole(role);
	}
	@Override
	public List<Role> selectAllRoleName() {
		// TODO Auto-generated method stub
		return roleDao.selectAllRoleName();
	}
	@Override
	public Role selectRoleById(int id) {
		// TODO Auto-generated method stub
		return roleDao.selectRoleById(id);
	}
	@Override
	public int update(Role role) {
		// TODO Auto-generated method stub
		return roleDao.update(role);
	}
	@Override
	public int save(Role role) {
		// TODO Auto-generated method stub
		return roleDao.save(role);
	}
	@Override
	public List<Role> selectAllRole(Page page, Object roleName, Object roleState) {
		// TODO Auto-generated method stub
		return roleDao.selectAllRole(page, roleName, roleState);
	}
	@Override
	public int selectAllRows(Object roleName, Object roleState) {
		// TODO Auto-generated method stub
		return roleDao.selectAllRows(roleName, roleState);
	}
	@Override
	public int delectRole(Role role) {
		// TODO Auto-generated method stub
		return roleDao.delectRole(role);
	}

}
