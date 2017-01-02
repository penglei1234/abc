package com.dao.impl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.RoleDao;
import com.entity.Role;
import com.tool.JdbcHelper;

public class RoleDaoImpl extends JdbcHelper implements RoleDao{

	@Override
	public List<Role> query() {
		// TODO Auto-generated method stub
		
		String sql="select * from role";
		
		ResultSet rs=null;
		
		rs=queryAll(sql);
		
		List<Role> roleList=new ArrayList<Role>();
		
		try {
			
			while(rs.next()){
				
				Role role=new Role();
				
				role.setId(rs.getInt("id"));
				role.setRolename(rs.getString("rolename"));
				role.setRoledesc(rs.getString("roledesc"));
				role.setOperation(rs.getString("operation"));
				role.setState(rs.getInt("state"));
				
				roleList.add(role);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return roleList;
	}

}
