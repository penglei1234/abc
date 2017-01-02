package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.User;
import com.service.UserService;
import com.service.impl.UserServiceImpl;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		doPost(req, resp);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String userLogName = req.getParameter("userLogName");
		String userPassword = req.getParameter("userPassword");
		String imageCode = req.getParameter("imageCode");
		String sessionCode = req.getSession().getAttribute("code").toString();
		if (sessionCode.equalsIgnoreCase(imageCode)) {
			UserService userService = new UserServiceImpl();
			User user = userService.selectUserByUserLogNameAndUserPassword(
					userLogName, userPassword);
			if(user==null){
				resp.getWriter().print("用户名或密码错误，请重新输入");
			}else{
				req.getSession().setAttribute("user", user);
			}
		}else{
			resp.getWriter().print("验证码错误，请重新输入");
		}
	}

}
