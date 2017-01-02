package com.tool;
import java.sql.*;
import java.util.*;
import com.entity.*;
public class JdbcHelper {
	protected Connection con=null;
	protected PreparedStatement ps=null;
	protected ResultSet rs=null;
	//加载驱动
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//获取连接
	public Connection getCon(){
		try {
			con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test", "root", "465110");
			return con;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public int update(String sql,Object...params) throws Exception{
		con=getCon();
		ps=con.prepareStatement(sql);
		if(params!=null){
			for(int i=0;i<params.length;i++){
				ps.setObject(i+1, params[i]);
			}
		}
		return ps.executeUpdate();
	}
	public ResultSet query(String sql,Object...params) throws Exception{
		con=getCon();
		ps=con.prepareStatement(sql);
		if(params!=null){
			for(int i=0;i<params.length;i++){
				ps.setObject(i+1, params[i]);
			}
		}
		return ps.executeQuery();	
	}
	public ResultSet queryAll(String sql,Object...params){
		con=getCon();
		try {
			ps=con.prepareStatement(sql);
			if(params!=null||"".equals(params)){
				for(int i=0;i<params.length;i++){
					ps.setObject(i+1, params[i]);
				}
			}
			rs=ps.executeQuery();
			return rs;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public void closeAll(){
		try {
			if(rs!=null){
				rs.close();
			}
			if(ps!=null){
				ps.close();
			}
			if(con!=null){
				con.close();
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
