package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.User;
import com.service.UserService;
import com.service.impl.UserServiceImpl;

public class RegistServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String sex=request.getParameter("sex");
		String[] hobbys=request.getParameterValues("hobby");
		String hobby=Arrays.toString(hobbys);
		String address=request.getParameter("sel");
		String email=request.getParameter("email");
		
		if("".equals(username)||"".equals(password)||"".equals(email)){
			request.setAttribute("errorInfo", "用户名、密码或邮箱不能为空");
			request.setAttribute("sex", sex);
			request.setAttribute("sel", address);
			request.setAttribute("hobby", hobbys);
			
			request.getRequestDispatcher("regist.jsp").forward(request, response);
		}else{
			User user=new User();
			user.setUsername(username);
			user.setPassword(password);
			
			

			UserService userService=new UserServiceImpl();
			int res=userService.addUser(user);
			if(res!=1){
				request.setAttribute("user", user);
				request.setAttribute("sex", sex);
				
				request.setAttribute("hobby", hobbys);
				request.setAttribute("sel", address);
				request.getRequestDispatcher("regist.jsp").forward(request, response);
			}else{
				//request.setAttribute("user", user);
				
				request.getRequestDispatcher("LoginServlet").forward(request, response);
			}
		}
	}

}
