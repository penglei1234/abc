package com.servlet;

import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.FenYe;
import com.entity.User;
import com.service.UserService;
import com.service.impl.UserServiceImpl;
import com.tool.ExportExcel;

public class UserServlet extends HttpServlet {
	String type =null;
	UserService userService = new UserServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		type = request.getParameter("type");
		
		if (type != null) {
			if ("search".equals(type)) {

				//selectByNameAndTel(request, response, userService);

			} else if ("add".equals(type)) {

				add(request, response, userService);

			} else if ("select".equals(type)) {

				select(request, response, userService);

			} else if ("selectById".equals(type)) {

				selectUserById(request, response, userService);

			} else if ("preupdate".equals(type)) {

				preUpdate(request, response, userService);

			} else if ("update".equals(type)) {

				update(request, response, userService);

			} else if ("deleteById".equals(type)) {

				deleteById(request, response, userService);

			} else if ("batchdelete".equals(type)) {

				batchDelete(request, response, userService);

			}else if("export".equals(type)){
				
				export(request, response, userService);
				
			}
		} else {
			response.sendRedirect("error.jsp");
		}
	}

	private void add(HttpServletRequest request, HttpServletResponse response,
			UserService userService) throws ServletException, IOException {

		String username = request.getParameter("username");

		
		if(username!=null||"".equals(username)){
			
			//首先和当前登录的用户名做比较，如果相同，直接就不能添加，并返回不能添加的原因
			
			if(username.equals(((User)request.getSession().getAttribute("user")).getUsername())){
				
				String messageInfo="该用户已存在";
				request.setAttribute("messageInfo", messageInfo);
				request.getRequestDispatcher("resource/user/add.jsp").forward(request, response);
				return;
			}
			//然后再去和数据库中的所有用户名一一比对，如果有相同的就不能加入
			//为获取数据库中的所有用户做准备
			String pageNow = request.getParameter("pageNow");
			FenYe fenye = new FenYe();

			fenye.setPageNow(pageNow == null || "".equals(pageNow) ? 1 : Integer.parseInt(pageNow));
			
			List<User> userList=userService.queryUser(fenye, null);
			
			for(User user1:userList){
				//比较用户名
				if(username.equals(user1.getUsername())){
					String messageInfo="该用户已存在";
					request.setAttribute("messageInfo", messageInfo);
					request.getRequestDispatcher("resource/user/add.jsp").forward(request, response);
					return;
				}
			}

			
			String password = request.getParameter("password");
			String sex = request.getParameter("sex");
			String age = request.getParameter("age");
			String idcard = request.getParameter("idcard");
			String tel = request.getParameter("tel");
			String address = request.getParameter("address");
			String intime = request.getParameter("intime");
			String outtime = request.getParameter("outtime");
			String state = request.getParameter("state");
			
			
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			if ("0".equals(sex)) {
				user.setSex("男");
			} else {
				user.setSex("女");
			}
			user.setAge(Integer.parseInt(age));
			user.setIdcard(idcard);
			user.setTel(tel);
			user.setAddress(address);
			user.setIntime(intime);
			user.setOuttime(outtime);
			user.setState(Integer.parseInt(state));

			userService.addUser(user);
			
			select(request, response, userService);
		
		}	
	}

	/*private void selectByNameAndTel(HttpServletRequest request,
			HttpServletResponse response, UserService userService)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String tel = request.getParameter("tel");
		User user = userService.selectByNameAndTel(username, tel);
		request.setAttribute("user", user);
		request.getRequestDispatcher("/resource/user/view.jsp").forward(
				request, response);
	}*/

	private void deleteById(HttpServletRequest request,
			HttpServletResponse response, UserService userService)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		userService.deleteUserById(Integer.parseInt(id));

		select(request, response, userService);
	}

	private void batchDelete(HttpServletRequest request,
			HttpServletResponse response, UserService userService)
			throws ServletException, IOException {

		String[] sid = request.getParameterValues("user");

		if (sid != null || "".equals(sid)) {
			int[] id = new int[sid.length];

			for (int i = 0; i < sid.length; i++) {
				id[i] = Integer.parseInt(sid[i]);
			}

			userService.batchDelete(id);
			select(request, response, userService);
		}

	}

	private void preUpdate(HttpServletRequest request,
			HttpServletResponse response, UserService userService)
			throws ServletException, IOException {

		String id = request.getParameter("id");

		User user = userService.selectUserById(Integer.parseInt(id));

		request.setAttribute("user", user);
		request.getRequestDispatcher("resource/user/edit.jsp").forward(request,
				response);
	}

	private void update(HttpServletRequest request,
			HttpServletResponse response, UserService userService)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		String sex = request.getParameter("sex");
		String age = request.getParameter("age");
		String idcard = request.getParameter("idcard");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		String intime = request.getParameter("intime");
		String outtime = request.getParameter("outtime");
		String state = request.getParameter("state");

		User user = new User();

		user.setId(Integer.parseInt(id));
		user.setUsername(username);
		user.setPassword(password);
		if ("0".equals(sex)) {
			user.setSex("男");
		} else {
			user.setSex("女");
		}
		user.setAge(Integer.parseInt(age));
		user.setIdcard(idcard);
		user.setTel(tel);
		user.setAddress(address);
		user.setIntime(intime);
		user.setOuttime(outtime);
		user.setState(Integer.parseInt(state));

		userService.updateUser(user);

		select(request, response, userService);
	}

	private void select(HttpServletRequest request,
			HttpServletResponse response, UserService userService)
			throws ServletException, IOException {
		
		String username=request.getParameter("username");
		String tel=request.getParameter("tel");
		User user=null;
		if("select".equals(type)){
			user=new User();
			user.setUsername(username);
			user.setTel(tel);
			
			request.setAttribute("user", user);
		}
		
		String pageNow = request.getParameter("pageNow");
		FenYe fenye = new FenYe();

		fenye.setPageNow(pageNow == null || "".equals(pageNow) ? 1 : Integer.parseInt(pageNow));

		List<User> users = userService.queryUser(fenye,user);
		request.setAttribute("users", users);
		request.setAttribute("fenye", fenye);
		
		request.getRequestDispatcher("resource/user/index.jsp").forward(
				request, response);
	}

	private void selectUserById(HttpServletRequest request,
			HttpServletResponse response, UserService userService)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		User user = userService.selectUserById(Integer.parseInt(id));

		request.setAttribute("user", user);
		request.getRequestDispatcher("/resource/user/view.jsp").forward(
				request, response);
	}
	private void export(HttpServletRequest request,
			HttpServletResponse response, UserService userService) throws ServletException, IOException{
		
		String rootPath=getServletContext().getRealPath("/");
		String filePath=rootPath+"export\\"+UUID.randomUUID().toString()+".xls";
		String[] sid = request.getParameterValues("user");

		if (sid != null || "".equals(sid)) {
			int[] id = new int[sid.length];

			for (int i = 0; i < sid.length; i++) {
				id[i] = Integer.parseInt(sid[i]);
			}
			List<User> userList=userService.exportUser(id);
			ExportExcel.exportExcel(userList, filePath);
		}
		select(request, response, userService);
	}
}
