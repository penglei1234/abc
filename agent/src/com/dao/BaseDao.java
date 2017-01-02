package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseDao {
	protected Connection con;
	protected PreparedStatement ps;
	protected ResultSet	rs;
	
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public Connection getCon() throws SQLException {
		Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/agent", "root", "465110");
		return con;
	}
	
	public int update(String sql,Object... params){
		Connection con = null;
		PreparedStatement ps=null;
		try {
			con = getCon();
			ps = con.prepareStatement(sql);
			if (params!=null) {
				for (int i = 0; i < params.length; i++) {
					ps.setObject(i+1, params[i]);
				}
			}
			return ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeAll(null,ps,con);
		}
		return -1;
		
	}
	
	public ResultSet query(String sql,Object... params) throws SQLException{
		con = getCon();
		ps = con.prepareStatement(sql);
		if (params!=null) {
			for (int i = 0; i < params.length; i++) {
				ps.setObject(i+1, params[i]);
			}
		}
		ResultSet rs = ps.executeQuery();
		return rs;
	}
	public void closeAll(ResultSet rs,PreparedStatement ps,Connection con){
		try {
			if (rs!=null) {
				rs.close();
			}
			if (ps!=null) {
				ps.close();
			}
			if (con!=null) {
				con.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
