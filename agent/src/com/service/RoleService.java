package com.service;

import java.util.List;

import com.entity.Role;
import com.tool.Page;

public interface RoleService {
	public int insertRole(Role role);

	public List<Role> selectAllRoleName();

	public Role selectRoleById(int id);

	public int update(Role role);

	public int save(Role role);

	public List<Role> selectAllRole(Page page, Object roleName, Object roleState);

	public int selectAllRows(Object roleName, Object roleState);

	public int delectRole(Role role);

}
