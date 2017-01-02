package com.dao.impl;

import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

import com.dao.BaseDao;
import com.dao.RoleDao;
import com.entity.Role;
import com.tool.Page;

public class RoleDaoImpl extends BaseDao implements RoleDao {

	@Override
	public int insertRole(Role role) {
		String sql = "insert into role(role_name,role_state,role_remark) values(?,?,?)";
		return update(sql, role.getRoleName(), role.getRoleState(),
				role.getRoleRemark());
	}

	@Override
	public List<Role> selectAllRoleName() {
		String sql = "select role_name from role";
		ResultSet rs = null;
		List<Role> roleList = new ArrayList<Role>();
		try {
			rs = query(sql);
			while (rs.next()) {
				Role role = new Role();
				role.setRoleName(rs.getString("role_name"));
				roleList.add(role);
			}
			return roleList;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, ps, con);
		}
		return null;
	}

	@Override
	public Role selectRoleByUserId(int userid) {
		String sql = "select r.role_id roleId,r.role_name roleName FROM user_role ur LEFT JOIN role r ON ur.role_id=r.role_id WHERE ur.user_id=?";
		ResultSet rs = null;
		try {
			rs = query(sql, userid);
			if (rs.next()) {
				Role role = new Role();
				role.setRoleId(rs.getInt("roleId"));
				role.setRoleName(rs.getString("roleName"));
				return role;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, ps, con);
		}
		return null;
	}

	public Role selectRoleById(int id) {
		String sql = "select * from `role` where role_id=?";
		ResultSet rs = null;
		try {
			rs = query(sql, id);
			if (rs.next()) {
				Role role = new Role();
				role.setRoleId(rs.getInt("role_id"));
				role.setRoleName(rs.getString("role_name"));
				role.setRoleState(rs.getInt("role_state"));
				role.setRoleRemark(rs.getString("role_remark"));
				return role;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, ps, con);
		}
		return null;
	}

	public int update(Role role) {
		String sql = "update role set role_name=?,role_state=?,role_remark=?,role_time=? where role_id=?";
		return update(sql, role.getRoleName(), role.getRoleState(),
				role.getRoleRemark(), role.getRoleTime(), role.getRoleId());

	}

	@Override
	public int save(Role role) {
		return 0;
	}

	@Override
	public List<Role> selectAllRole(Page page, Object roleName, Object roleState) {
		// 储存模糊查询的条件
		List<Object> params = new ArrayList<Object>();
		StringBuffer sb = new StringBuffer(
				"select role_id,role_name,role_state,role_remark,role_time from role where 1=1");
		if (roleName != null && !"".equals(roleName)) {
			sb.append(" and role_name like ?");
			params.add("%" + roleName + "%");
		}
		if (roleState != null && !"".equals(roleState)) {
			if ("禁用".equals(roleState)) {
				sb.append(" and role_state=?");
				params.add(0);
			} else if ("启用".equals(roleState)) {
				sb.append(" and role_state=?");
				params.add(1);
			}
		}
		sb.append(" order by role_time desc limit ?,?");
		params.add((page.getPageNow() - 1) * page.getPageSize());
		params.add(page.getPageSize());
		ResultSet rs = null;
		try {
			rs = query(sb.toString(), params.toArray());
			List<Role> roleList = new ArrayList<Role>();
			while (rs.next()) {
				Role role = new Role();
				role.setRoleId(rs.getInt("role_id"));
				role.setRoleName(rs.getString("role_name"));
				role.setRoleState(rs.getInt("role_state"));
				role.setRoleRemark(rs.getString("role_remark"));
				role.setRoleTime(rs.getDate("role_time"));
				roleList.add(role);
			}
			return roleList;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, ps, con);
		}
		return null;
	}

	@Override
	public int selectAllRows(Object roleName, Object roleState) {
		List<Object> params = new ArrayList<Object>();
		StringBuffer sb = new StringBuffer(
				"select count(role_id) roleId from role where 1=1");
		if (roleName != null && !"".equals(roleName)) {
			sb.append(" and role_name like ?");
			params.add("%" + roleName + "%");
		}
		if (roleState != null && !"".equals(roleState)) {
			if ("禁用".equals(roleState)) {
				sb.append(" and role_state=?");
				params.add(0);
			} else if ("启用".equals(roleState)) {
				sb.append(" and role_state=?");
				params.add(1);
			}
		}
		ResultSet rs = null;
		try {
			rs = query(sb.toString(), params.toArray());
			if (rs.next()) {
				return rs.getInt("roleId");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	@Override
	public int delectRole(Role role) {
		String sql = "update role set role_isdel = 0 where role_id=?";
		int result = update(sql, role.getRoleId());
		return result;
	}

}
