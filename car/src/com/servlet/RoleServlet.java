package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Role;
import com.service.RoleService;
import com.service.impl.RoleServiceImpl;

public class RoleServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String type=request.getParameter("type");
		RoleService roleService=new RoleServiceImpl();
		
		if(type!=null||"".equals(type)){
			
			if("select".equals(type)){
				
				select(request, response, roleService);
			}
			//if(){}
			
			
			
			
		}else{
			response.sendRedirect("error.jsp");
		}
	}
	private void select(HttpServletRequest request, HttpServletResponse response, RoleService roleService) throws ServletException, IOException{
		
		List<Role> roleList=roleService.query();
		
		request.setAttribute("roleList", roleList);
		
		request.getRequestDispatcher("resource/system/demo1/list.jsp").forward(request, response);
	}
}
