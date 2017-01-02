package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.FenYe;
import com.entity.User;
import com.service.UserService;
import com.service.impl.UserServiceImpl;

public class LoginServlet extends HttpServlet {


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		User user1=(User)request.getAttribute("user");
//		String username=user1.getName();
//		String password=user1.getPassword();
		
	
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String keep=request.getParameter("keep");
		String checkCode=request.getParameter("checkcode");
		
		if("".equals(username)||"".equals(password)){
			request.setAttribute("messageInfo", "�û��������벻��Ϊ��");
			request.setAttribute("username", username);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else{
			
			
			UserService userService=new UserServiceImpl();
			User user=userService.login(username, password);
			
			if(user==null){
				request.setAttribute("messageInfo", "�û������������");
				request.setAttribute("username", username);
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}else{
				if(checkCode!=null&&!"".equals(checkCode)){
					if(!checkCode.equalsIgnoreCase(request.getSession().getAttribute("code").toString())){
						request.setAttribute("messageInfo", "��֤���������");
						request.setAttribute("username", username);
						request.getRequestDispatcher("login.jsp").forward(request, response);
					}else if(user.getState()==0){
						//����û�����δ����״̬��Ҳ���ܵ�¼
						request.setAttribute("messageInfo", "���û�������");
						request.setAttribute("username", username);
						request.getRequestDispatcher("login.jsp").forward(request, response);
					}else{
						//request.setAttribute("user", user);
						HttpSession session=request.getSession();
						session.setAttribute("user", user);
						
						FenYe fenye=new FenYe();
						fenye.setPageNow(1);
						List<User> users=userService.queryUser(fenye,null);
						request.setAttribute("users", users);
						
						if(keep!=null||"".equals(keep)&&"iskeep".equals(keep)){
							Cookie cookie=new Cookie("username", username);
							response.addCookie(cookie);
						}else{
							Cookie cookie=new Cookie("username", "");
							response.addCookie(cookie);
						}						
						request.getRequestDispatcher("resource/index.jsp").forward(request, response);
					}
				}else{
					request.setAttribute("messageInfo", "��֤���������");
					request.setAttribute("username", username);
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			}
		}	
	}
}
