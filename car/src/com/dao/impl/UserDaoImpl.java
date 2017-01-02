package com.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.UserDao;
import com.entity.FenYe;
import com.entity.User;

import com.tool.JdbcHelper;

public class UserDaoImpl extends JdbcHelper implements UserDao {

	@Override
	public User login(String username, String password) {
		// TODO Auto-generated method stub

		String sql = "select * from `cuser` where username=? and password =?";
		ResultSet rs = null;
		try {
			rs = query(sql, username, password);
			if (rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setSex(rs.getString("sex"));
				user.setAge(rs.getInt("age"));
				user.setIdcard(rs.getString("idcard"));
				user.setTel(rs.getString("tel"));
				user.setAddress(rs.getString("address"));
				user.setIntime(rs.getString("intime"));
				user.setOuttime(rs.getString("outtime"));
				user.setState(rs.getInt("state"));
				return user;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		String sql = "insert into cuser values(default,?,?,?,?,?,?,?,?,?,?)";
		try {
			return update(sql, user.getUsername(), user.getPassword(),
					user.getSex(), user.getAge(), user.getIdcard(),
					user.getTel(), user.getAddress(), user.getIntime(),
					user.getOuttime(), user.getState());

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}

	@Override
	public int deleteUserById(int id) {
		// TODO Auto-generated method stub
		String sql = "delete from `cuser` where id=?";
		try {
			return update(sql, id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		String sql = "update cuser set username=?,password=?,sex=?,age=?,idcard=?,tel=?,address=?,intime=?,outtime=?,state=? where id=?";
		try {
			return update(sql, user.getUsername(), user.getPassword(),
					user.getSex(), user.getAge(), user.getIdcard(),
					user.getTel(), user.getAddress(), user.getIntime(),
					user.getOuttime(), user.getState(), user.getId());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}

	@Override
	public User selectUserById(int id) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		String sql = "select * from `cuser` where id=?";
		try {
			rs = query(sql, id);
			if (rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setSex(rs.getString("sex"));
				user.setAge(rs.getInt("age"));
				user.setIdcard(rs.getString("idcard"));
				user.setTel(rs.getString("tel"));
				user.setAddress(rs.getString("address"));
				user.setIntime(rs.getString("intime"));
				user.setOuttime(rs.getString("outtime"));
				user.setState(rs.getInt("state"));

				return user;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<User> queryUser(FenYe fenye,User user1) {
		// TODO Auto-generated method stub
		StringBuffer sql1 =new StringBuffer("select count(id) from cuser where 1=1 ");
		List<Object> params1=new ArrayList<Object>();
		if(user1!=null){
			String username1=user1.getUsername();
			String tel1=user1.getTel();
			if(username1!=null&&!"".equals(username1)){
				sql1.append("and username like ? ");
				params1.add("%"+username1+"%");
			}
			if(tel1!=null&&!"".equals(tel1)){
				sql1.append("and tel=? ");
				params1.add(tel1);
			}
		}
		try {
			ResultSet rs1 = query(sql1.toString(),params1.toArray());
			if (rs1.next()) {
				fenye.setPageRow(rs1.getInt(1));
				int pageRow = fenye.getPageRow();
				int pageSize = fenye.getPageSize();
				int pageCount = (int) (Math.ceil((double) (pageRow / pageSize)));
				fenye.setPageCount(pageCount);
			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		StringBuffer sql=new StringBuffer("select * from `cuser` where 1=1 ");
		List<Object> params=new ArrayList<Object>();
		if(user1!=null){
			String username=user1.getUsername();
			String tel=user1.getTel();
			if(username!=null&&!"".equals(username)){
				sql.append("and username like ? ");
				params.add("%"+user1.getUsername()+"%");
			}
			if(tel!=null&&!"".equals(tel)){
				sql.append("and tel=? ");
				params.add(tel);
			}
		}
		sql.append("limit ?,?");
		params.add((fenye.getPageNow()-1)*fenye.getPageSize());
		params.add(fenye.getPageSize());
		
		ResultSet rs = queryAll(sql.toString(),params.toArray());
		List<User> list = new ArrayList<User>();
		try {
			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				// user.setPassword(rs.getString("password"));
				user.setSex(rs.getString("sex"));
				user.setAge(rs.getInt("age"));
				user.setIdcard(rs.getString("idcard"));
				user.setTel(rs.getString("tel"));
				user.setAddress(rs.getString("address"));
				user.setIntime(rs.getString("intime"));
				user.setOuttime(rs.getString("outtime"));
				user.setState(rs.getInt("state"));

				list.add(user);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return null;
	}

	@Override
	public User selectByNameAndTel(String name, String tel) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		String sql = "select * from cuser where username=? and tel=?";
		try {
			rs = query(sql, name, tel);
			if (rs.next()) {
				User user = new User();
				user.setUsername(rs.getString("username"));
				user.setSex(rs.getString("sex"));
				user.setAge(rs.getInt("age"));
				user.setIdcard(rs.getString("idcard"));
				user.setTel(rs.getString("tel"));
				user.setAddress(rs.getString("address"));
				user.setIntime(rs.getString("intime"));
				user.setOuttime(rs.getString("outtime"));
				user.setState(rs.getInt("state"));

				return user;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void batchDelete(int[] id) {
		// TODO Auto-generated method stub
		String sql = "";
		try {
			PreparedStatement ps = getCon().prepareStatement(sql);
			for (int i = 0; i < id.length; i++) {
				sql = "delete from cuser where id=" + id[i];
				ps.addBatch(sql);
			}
			ps.executeBatch();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
	}

	@Override
	public List<User> exportUser(int[] id) {
		// TODO Auto-generated method stub
		StringBuffer sql=new StringBuffer("select * from cuser where id in(");
		if(id!=null){
			for(int i=0;i<id.length;i++){
				if(i!=id.length-1){
					sql.append(id[i]);
					sql.append(",");
				}else{
					sql.append(id[i]);
					sql.append(")");
				}
			}
		}
		ResultSet rs=null; 
		List<User> userList=new ArrayList<User>();
		try {
			rs=getCon().prepareStatement(sql.toString()).executeQuery();
			if(rs!=null){
				while(rs.next()){
					User user=new User();
					user.setId(rs.getInt("id"));
					user.setUsername(rs.getString("username"));
					user.setPassword(rs.getString("password"));
					user.setSex(rs.getString("sex"));
					user.setAge(rs.getInt("age"));
					user.setIdcard(rs.getString("idcard"));
					user.setTel(rs.getString("tel"));
					user.setAddress(rs.getString("address"));
					user.setIntime(rs.getString("intime"));
					user.setOuttime(rs.getString("outtime"));
					user.setState(rs.getInt("state"));

					userList.add(user);
				}
			}
				return userList;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				closeAll();
			}		
		return null;
	}

}
