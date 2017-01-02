package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Menu;
import com.entity.Role;
import com.service.MenuService;
import com.service.RoleService;
import com.service.impl.MenuServiceImpl;
import com.service.impl.RoleServiceImpl;

public class MenuServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String method = req.getParameter("method");
		MenuService menuService = new MenuServiceImpl();
		if ("insert".equals(method)) {
			insertMenu(req, resp, menuService);
		}else if("selectById".equals(method)){
	     	   selectById(req, resp, menuService);
	     	   }
	    	else if("update".equals(method)){
	      	   update(req, resp, menuService);
	      	   }
	    	else if("save".equals(method)){
	       	   save(req, resp, menuService);
	       	   }
	    	else if("delete".equals(method)){
	           delete(req, resp, menuService);
	        	}

	}
	private void delete(HttpServletRequest req,
			HttpServletResponse resp, MenuService menuService) throws ServletException, IOException {
		   String menu_id = req.getParameter("id");
		   String menu_isdel = req.getParameter("isdel");
		   
		   Menu menu = new Menu();
		   menu.setMenuId(Integer.valueOf(menu_id));
		   menu.setMenuIdDel(Integer.valueOf(menu_isdel));
		   
		   int result = menuService.deleteMenu(menu);
			if(result<0){
				req.getRequestDispatcher("").forward(req, resp);
			}else{
			}
		
	}
	private void save(HttpServletRequest req, HttpServletResponse resp,
			MenuService menuService) throws ServletException, IOException {
		String menu_id=req.getParameter("id");
		String menu_name = req.getParameter("menu_name");
		String menu_firstmenu = req.getParameter("menu_firstmenu");
		String menu_state = req.getParameter("menu_state");
	    String menu_url = req.getParameter("menu_url");
	    String menu_intro = req.getParameter("menu_intro");
				
		Menu menu = new Menu();
		menu.setMenuId(Integer.valueOf(menu_id));
		menu.setMenuName(menu_name);
		menu.setMenuFirstMenu(Integer.valueOf(menu_firstmenu));
		menu.setMenuState(Integer.valueOf(menu_state));
		menu.setMenuUrl(menu_url);
		menu.setMenuIntro(menu_intro);
		menu.setMenuTime(new Date());
		int result = menuService.update(menu);
		if(result<0){
			req.getRequestDispatcher("").forward(req, resp);
		}else{
		}
		
	}
	private void update(HttpServletRequest req,
			HttpServletResponse resp, MenuService menuService) throws ServletException, IOException {
		String id = req.getParameter("id");
		Menu menu = menuService.selectMenuById(Integer.valueOf(id));
		req.setAttribute("menu", menu);

		req.getRequestDispatcher("pages/org/menu/menu-edit.jsp").forward(req, resp);
		
	}
	private void selectById(HttpServletRequest request,
			HttpServletResponse response, MenuService menuService) throws ServletException, IOException {
		    String id = request.getParameter("id");
    		Menu menu = menuService.selectMenuById(Integer.valueOf(id));
    		request.setAttribute("menu", menu);
    
    		request.getRequestDispatcher("pages/org/menu/menu-info.jsp").forward(request, response);
		
	}


	private void insertMenu(HttpServletRequest req, HttpServletResponse resp,
			MenuService menuService) throws ServletException, IOException {
		String menuName = req.getParameter("menuName");
		String firstMenu = req.getParameter("firstMenu");
		String menuState = req.getParameter("menuState");
		String menuUrl = req.getParameter("menuUrl");
		String menuIntro = req.getParameter("menuIntro");
		// 创建Role对象,封装信息!
		Menu menu = new Menu();
		menu.setMenuName(menuName);
		menu.setMenuFirstMenu(Integer.parseInt(firstMenu));
		menu.setMenuState(Integer.parseInt(menuState));
		menu.setMenuUrl(menuUrl);
		menu.setMenuIntro(menuIntro);
		int result = menuService.insertMenu(menu);
		if (result < 0) {
			req.getRequestDispatcher("").forward(req, resp);

		} else {

			req.getRequestDispatcher("").forward(req, resp);
		}
	}
}
