package com.service.impl;

import com.dao.MenuDao;
import com.dao.impl.MenuDaoImpl;
import com.entity.Menu;
import com.service.MenuService;

public class MenuServiceImpl implements MenuService {
	MenuDao menuDao=new MenuDaoImpl();
	public int insertMenu(Menu menu) {
		// TODO Auto-generated method stub
		return menuDao.insertMenu(menu);
	}
	@Override
	public Menu selectMenuById(int id) {
		// TODO Auto-generated method stub
		return menuDao.selectMenuById(id);
	}
	@Override
	public int update(Menu menu) {
		// TODO Auto-generated method stub
		return menuDao.update(menu);
	}
	@Override
	public int deleteMenu(Menu menu) {
		// TODO Auto-generated method stub
		return menuDao.deleteMenu(menu);
	}

}
