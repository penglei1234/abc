package com.dao;

import java.util.List;

import com.entity.Role;
import com.tool.Page;


public interface RoleDao {
	/**
	 * 插入角色
	 * */
	public int insertRole(Role role);
	/**
	 * 查询所有的角色
	 * */
	public List<Role> selectAllRoleName();
	/**
	 *根据用户的ID查询角色
	 * */
	public Role selectRoleByUserId(int userId);
	/**
	 * 根据id查看信息
	 * */
	public Role selectRoleById(int id);
	/**
	 * 编辑界面
	 * */
	public int update(Role role);
	/**
	 * 保存编辑
	 * */
	public int save(Role role);
	/**
	 * 角色管理界面(查询所有角色信息)
	 * */
	public List<Role> selectAllRole(Page page,Object roleName,Object roleState);
	/**
	 * 查询所有行数(模糊查询)
	 * */
	public int selectAllRows(Object roleName,Object roleState);
	/**
	 * 删除角色(更新状态)
	 * */
	public int delectRole(Role role);
}
