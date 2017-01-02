package com.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.dao.BaseDao;
import com.dao.RoleDao;
import com.dao.UserDao;
import com.entity.FinaceTb;
import com.entity.Prepayment;
import com.entity.Role;
import com.entity.User;
import com.tool.Page;

public class UserDaoImpl extends BaseDao implements UserDao {

	@Override
	public int insertUser(User user) {
		String sql = "insert into `user`(user_logname,user_password,user_realname,user_idcard,user_sex,user_address,user_email,user_phone,user_state,user_starttime) values(?,?,?,?,?,?,?,?,?,?)";
		update(sql, user.getUserLogName(), user.getUserPassword(),
				user.getUserRealName(), user.getUserIdCard(),
				user.getUserSex(), user.getUserAddress(), user.getUserEmail(),
				user.getUserPhone(), user.getUserState(),
				user.getUserStartTime());

		// 调用查询最大userId的方法
		int uid = selectMaxUserId();
		String sql1 = "select role_id from role where role_name=?";
		ResultSet rs = null;
		try {
			rs = query(sql1, user.getRole().getRoleName());
			if (rs.next()) {
				int roleId = rs.getInt("role_id");
				String sql2 = "insert into user_role(user_id,role_id) values(?,?)";
				return update(sql2, uid, roleId);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, ps, con);
		}
		return -1;
	}

	@Override
	public int selectMaxUserId() {
		String sql = "select MAX(user_id) u from `user`";
		ResultSet rs = null;
		try {
			rs = query(sql);
			if (rs.next()) {
				int userId = rs.getInt("u");
				return userId;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, ps, con);
		}
		return 0;
	}

	@Override
	public List<User> selectAllUser(Page page, String user_realname,
			String user_state) {
		// 集合 用于储存模糊查询的条件
		List<Object> params = new ArrayList<Object>();
		StringBuffer sb = new StringBuffer(
				"select user_id,user_logname,user_realname,user_starttime,user_state,user_isdel from `user` where user_isdel=1");
		if (user_realname != null && !"".equals(user_realname)) {
			sb.append(" and user_realname like ?");
			params.add("%" + user_realname + "%");
		}
		if (user_state != null && !"".equals(user_state)) {
			if ("禁用".equals(user_state)) {
				sb.append(" and user_state=?");
				params.add(0);
			} else if ("启用".equals(user_state)) {
				sb.append(" and user_state=?");
				params.add(1);
			}
		}
		sb.append(" order by user_starttime desc limit ?,?");
		params.add((page.getPageNow() - 1) * page.getPageSize());
		params.add(page.getPageSize());

		ResultSet rs = null;
		try {
			rs = query(sb.toString(), params.toArray());
			List<User> userList = new ArrayList<User>();
			while (rs.next()) {
				User user = new User();
				user.setUserId(rs.getInt("user_id"));
				user.setUserLogName(rs.getString("user_logname"));
				user.setUserRealName(rs.getString("user_realname"));
				user.setUserStartTime(rs.getDate("user_starttime"));
				user.setUserState(rs.getInt("user_state"));
				// user.setUserIsDel(rs.getInt("user_isdel"));
				RoleDao roledao = new RoleDaoImpl();
				user.setRole(roledao.selectRoleByUserId(user.getUserId()));
				userList.add(user);
			}
			return userList;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, ps, con);
		}
		return null;
	}

	@Override
	public int selectAllRows(String user_realname, String user_state) {
		// 集合 用于储存模糊查询的条件
		List<Object> params = new ArrayList<Object>();
		StringBuffer sb = new StringBuffer(
				"select count(user_id) allRows from `user` where user_isdel=1 ");
		if (user_realname != null && !"".equals(user_realname)) {
			sb.append(" and user_realname like ?");
			params.add("%" + user_realname + "%");
		}
		if (user_state != null && !"".equals(user_state)) {
			if ("禁用".equals(user_state)) {
				sb.append(" and user_state=?");
				params.add(0);
			} else if ("启用".equals(user_state)) {
				sb.append(" and user_state=?");
				params.add(1);
			}
		}
		ResultSet rs = null;
		try {
			rs = query(sb.toString(), params.toArray());
			if (rs.next()) {
				return rs.getInt("allRows");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, ps, con);
		}
		return 0;
	}

	@Override
	public int updateUserByUserId(User user) {
		String sql = "delete from user_role where user_id=?";
		update(sql, user.getUserId());
		String sql1 = "select role_id from role where role_name=?";
		ResultSet rs = null;
		try {
			rs = query(sql1, user.getRole().getRoleName());
			if (rs.next()) {
				int roleId = rs.getInt("role_id");
				String sql2 = "insert into user_role(user_id,role_id) values(?,?)";
				update(sql2, user.getUserId(), roleId);
				String sql3 = "update `user` set user_logname=?,user_password=?,user_realname=?,user_idcard=?,user_sex=?,user_address=?,user_email=?,user_phone=?,user_state=?,user_starttime=? where user_id=?";
				return update(sql3, user.getUserLogName(),
						user.getUserPassword(), user.getUserRealName(),
						user.getUserIdCard(), user.getUserSex(),
						user.getUserAddress(), user.getUserEmail(),
						user.getUserPhone(), user.getUserState(),
						user.getUserStartTime(), user.getUserId());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeAll(rs, ps, con);
		}
		return -1;
	}

	@Override
	public User selectUserById(int id) {
		String sql = "select * from user where user_id=?";
		ResultSet rs = null;
		try {
			rs = query(sql, id);
			if (rs.next()) {
				User user = new User();
				user.setUserId(rs.getInt("user_id"));
				user.setUserRealName(rs.getString("user_realname"));
				user.setUserLogName(rs.getString("user_logname"));
				user.setUserPassword(rs.getString("user_password"));
				user.setUserIdCard(rs.getString("user_idcard"));
				user.setUserSex(rs.getString("user_sex"));
				user.setUserAddress(rs.getString("user_address"));
				user.setUserEmail(rs.getString("user_email"));
				user.setUserStartTime(rs.getDate("user_starttime"));
				user.setUserPhone(rs.getString("user_phone"));
				user.setUserState(rs.getInt("user_state"));
				user.setUserCaiWu(rs.getString("user_caiwu"));
				user.setUserCaoZuo(rs.getString("user_caozuo"));
				user.setUserIsDel(rs.getInt("user_isdel"));
				user.setUserUrl(rs.getString("user_url"));
				RoleDao roledao = new RoleDaoImpl();
				user.setRole(roledao.selectRoleByUserId(user.getUserId()));
				return user;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, ps, con);
		}
		return null;
	}

	@Override
	public User selectUserByUserRealName(String userRealName) {

		String sql = "select * from `user` where user_realname like ?";
		ResultSet rs = null;
		try {
			rs = query(sql, "%" + userRealName + "%");

			rs = query(sql, "%" + userRealName + "%");
			if (rs.next()) {
				User user = new User();
				user.setUserRealName(rs.getString("user_realname"));
				user.setUserId(rs.getInt("user_id"));
				return user;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, ps, con);
		}
		return null;
	}

	@Override
	public int deleteUserByUserId(int userId) {
		String sql = "update `user` set user_isdel=0 where user_id=?";
		return update(sql, userId);
	}

	@Override
	public int updateUserState(int userId) {
		String sql="select user_state from `user`";
		ResultSet rs=null;
		try {
			rs=query(sql);
			if(rs.next()){
				int result=(rs.getInt("user_state"))==1?0:1;
				sql = "update `user` set user_state=? where user_id=?";
				return update(sql, result,userId);
				 
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeAll(rs, ps, con);
		}
		return -1;
	}

	@Override
	public List<Prepayment> selectAllInfo(int userId, Page page,
			String finaceType, String startDate, String endDate) {
		// 创建集合用于储存模糊查询的条件
		List<Object> list = new ArrayList<Object>();
		StringBuffer sb = new StringBuffer(
				"select preid,finaceType,finacemoney,idbalance,remark,DATETIME from Prepayment where 1=1");
		if (userId != 0) {
			sb.append(" and user_id=?");
			list.add(userId);
		}
		if (finaceType != null && !"".equals(finaceType)) {
			sb.append(" and finaceType like ?");
			list.add("%" + finaceType + "%");
		}
		if (startDate != null && !"".equals(startDate)) {
			sb.append(" and DATETIME>=?");
			list.add(startDate);
		}
		if (endDate != null && !"".equals(endDate)) {
			sb.append(" and DATETIME<=?");
			list.add(endDate);
		}
		sb.append(" limit ?,?");
		list.add((page.getPageNow() - 1) * page.getPageSize());
		list.add(page.getPageSize());

		ResultSet rs = null;
		try {
			List<Prepayment> preList = new ArrayList<Prepayment>();
			rs = query(sb.toString(), list.toArray());
			while (rs.next()) {
				Prepayment pre = new Prepayment();
				pre.setPreid(rs.getInt("preid"));
				pre.setFinaceType(rs.getString("finaceType"));
				pre.setFinacemoney(rs.getDouble("finacemoney"));
				pre.setIdbalance(rs.getDouble("idbalance"));
				pre.setRemark(rs.getString("remark"));
				pre.setDatetime(rs.getDate("DATETIME"));
				preList.add(pre);
			}
			return preList;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeAll(rs, ps, con);
		}

		return null;
	}

	@Override
	public int selectPrepaymentRows(int userId, String finaceType,
			String startDate, String endDate) {
		// 创建集合用于储存模糊查询的条件
		List<Object> list = new ArrayList<Object>();
		StringBuffer sb = new StringBuffer(
				"select count(preid) id from Prepayment where 1=1");
		if (userId != 0) {
			sb.append(" and user_id=?");
			list.add(userId);
		}
		if (finaceType != null && !"".equals(finaceType)) {
			sb.append(" and finaceType like ?");
			list.add("%" + finaceType + "%");
		}
		if (startDate != null && !"".equals(startDate)) {
			sb.append(" and DATETIME>=?");
			list.add(startDate);
		}
		if (endDate != null && !"".equals(endDate)) {
			sb.append(" and DATETIME<=?");
			list.add(endDate);
		}
		ResultSet rs = null;
		try {
			rs = query(sb.toString(), list.toArray());
			if (rs.next()) {
				return rs.getInt("id");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, ps, con);
		}
		return 0;
	}

	@Override
	public User selectUserByUserLogNameAndUserPassword(String userLogName,
			String userPassword) {

		String sql="select * from user where user_logname=? and user_password=?";
		ResultSet rs=null;
		try {
			rs=query(sql, userLogName,userPassword);
			if(rs.next()){
				User user=new User();
				user.setUserId(rs.getInt("user_id"));
				user.setUserRealName(rs.getString("user_realname"));
				user.setUserLogName(rs.getString("user_logname"));
				user.setUserPassword(rs.getString("user_password"));
				user.setUserIdCard(rs.getString("user_idcard"));
				user.setUserSex(rs.getString("user_sex"));
				user.setUserAddress(rs.getString("user_address"));
				user.setUserEmail(rs.getString("user_email"));
				user.setUserStartTime(rs.getDate("user_starttime"));
				user.setUserPhone(rs.getString("user_phone"));
				user.setUserState(rs.getInt("user_state"));
				user.setUserCaiWu(rs.getString("user_caiwu"));
				user.setUserCaoZuo(rs.getString("user_caozuo"));
				user.setUserIsDel(rs.getInt("user_isdel"));
				user.setUserUrl(rs.getString("user_url"));
				
				return user;
			}
		} catch (Exception e) {

			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<String> selectAllFinaceType() {
		String sql = "select finaceType from finace_tb";
		ResultSet rs = null;
		try {
			rs = query(sql);
			List<String> list = new ArrayList<String>();
			while (rs.next()) {
				list.add(rs.getString("finaceType"));
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, ps, con);
		}
		return null;
	}

	@Override
	public List<Prepayment> selectInfoById(int[] preid) {
		StringBuffer sb=new StringBuffer("select preid,finaceType,finacemoney,idbalance,remark,DATETIME from Prepayment where preid in (");
		for (int i = 0; i < preid.length; i++) {
			if(i==preid.length-1){
				sb.append(preid[i]);
				sb.append(")");
			}else{
				sb.append(preid[i]);
				sb.append(",");
			}
		}
		ResultSet rs=null;
		try {
			rs=query(sb.toString());
			List<Prepayment> preList = new ArrayList<Prepayment>();
			while(rs.next()){
				Prepayment pre = new Prepayment();
				pre.setPreid(rs.getInt("preid"));
				pre.setFinaceType(rs.getString("finaceType"));
				pre.setFinacemoney(rs.getDouble("finacemoney"));
				pre.setIdbalance(rs.getDouble("idbalance"));
				pre.setRemark(rs.getString("remark"));
				pre.setDatetime(rs.getDate("DATETIME"));
				preList.add(pre);
			}
			return preList;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public int updateUserById(User user) {

		String sql="update `user` set user_logname=?,user_realname=?,user_idcard=?,user_sex=?,user_address=?,user_email=?,user_phone=?,user_state=? where user_id=?";
		return update(sql, user.getUserLogName(),user.getUserRealName(),user.getUserIdCard(),user.getUserSex(),user.getUserAddress(),user.getUserEmail(),user.getUserPhone(),user.getUserState(),user.getUserId());
	}

	@Override
	public List<Prepayment> selectAllInfo(int userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updatepassword(String password, int id) {

		String sql="update `user` set user_password=? where user_id=?";
		
		return update(sql, password, id);
	}

	
}