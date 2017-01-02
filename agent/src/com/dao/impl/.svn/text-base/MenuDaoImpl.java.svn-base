package com.dao.impl;

import java.sql.ResultSet;

import com.dao.BaseDao;
import com.dao.MenuDao;
import com.entity.Menu;

public class MenuDaoImpl extends BaseDao implements MenuDao {

	@Override
	public int insertMenu(Menu menu) {
		String sql = "insert into menu(menu_name,menu_firstmenu,menu_state,menu_url,menu_intro) values(?,?,?,?,?)";
		return update(sql, menu.getMenuName(), menu.getMenuFirstMenu(),
				menu.getMenuState(), menu.getMenuUrl(), menu.getMenuIntro());
	}
	@Override
	public Menu selectMenuById(int id) {
        String sql = "select * from `menu` where menu_id=?";
		
		ResultSet rs = null;
		try {
			rs = query(sql, id);
			if (rs.next()) {
			  Menu menu = new Menu();
			  menu.setMenuId(rs.getInt("menu_id"));
			  menu.setMenuName(rs.getString("menu_name"));
			  menu.setMenuFirstMenu(rs.getInt("menu_firstmenu"));
			  menu.setMenuState(rs.getInt("menu_state"));
			  menu.setMenuUrl(rs.getString("menu_url"));
			  menu.setMenuIntro(rs.getString("menu_intro"));
			  return menu;
			}
		}catch (Exception e) {
				e.printStackTrace();
			}finally{
				closeAll(rs, ps, con);
			}
		return null;
	}

	@Override
	public int update(Menu menu) {
		String sql = "update menu set menu_name=?,menu_firstmenu=?,menu_state=?,menu_url=?,menu_intro=?,menu_time=? where menu_id=?";
		return update(sql,menu.getMenuName(),menu.getMenuFirstMenu(),menu.getMenuState(),menu.getMenuUrl(),menu.getMenuIntro(),menu.getMenuTime(),menu.getMenuId());
	}

	@Override
	public int deleteMenu(Menu menu) {
		String sql = "update menu set menu_isdel = 0 where menu_id=?";
		int result =  update(sql,menu.getMenuId());
		return result;
	}


}
