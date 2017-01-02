package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.CustomerTypeTb;
import com.tool.Page;
import com.service.CustomerTypeTbService;
import com.service.impl.CustomerTypeTbServiceImpl;

public class CustomerTypeTbServlet extends HttpServlet {
	private Page page = null;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		CustomerTypeTbService customertypeTbService = new CustomerTypeTbServiceImpl();
		// 获取页面码
		String pageNum = request.getParameter("pageNow");
		int pageNow = pageNum == null || "".equals(pageNum) ? 1 : Integer
				.valueOf(pageNum);
		String cstmType = request.getParameter("cstmType");
		// 创建page对象，封装分页信息
		page = new Page(pageNow, 5,
				customertypeTbService.selectPageSize(cstmType));
		request.setAttribute("page", page);
		if ("insert".equals(method)) {
			insert(request, response, customertypeTbService);
		} else if ("delete".equals(method)) {
			delete(request, response, customertypeTbService);
		} else if ("update".equals(method)) {
			update(request, response, customertypeTbService);
		} else if ("save".equals(method)) {
			save(request, response, customertypeTbService);
		} else if ("select".equals(method)) {
			select(request, response, customertypeTbService);
		} else if ("selectAll".equals(method)) {
			selectAll(request, response, customertypeTbService);
		}else if("selectA".equals(method)){
			selectA(request, response, customertypeTbService);
		}

	}

	private void insert(HttpServletRequest request,
			HttpServletResponse response,
			CustomerTypeTbService customertypeTbService)
			throws ServletException, IOException {
		//从客户端获取的客户类型、是否启用两个值，将两个值放入insert方法中，从而加入到sql中
		String cstmType = request.getParameter("cstmType1");
		String state = request.getParameter("state");
        //创建一个客户的实体类，将所用要加入到sql的数据封装在一个实体类中
		CustomerTypeTb customerTypeTb = new CustomerTypeTb();
		customerTypeTb.setCstmType(cstmType);
		customerTypeTb.setState(Integer.valueOf(state));
		int result = customertypeTbService.insert(customerTypeTb);
		//小于0，没有实现增加的功能，跳入增加页面，重新实现增加，否则跳到list.jsp页面并显示增加到的值
		if (result < 0) {
			request.setAttribute("cstmType", cstmType);
			request.setAttribute("state", state);
			request.getRequestDispatcher(
					"pages/sys_config/customerType/customerType-add.jsp")
					.forward(request, response);
		} else {
			selectAll(request, response, customertypeTbService);
		}
	}

	private void delete(HttpServletRequest request,
			HttpServletResponse response,
			CustomerTypeTbService customertypeTbService)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		if (id == null || "".equals(id)) {
			response.sendRedirect("error.jsp");
		} else {
			// 执行删除
			customertypeTbService.delete(Integer.valueOf(id));
			//跳转到list的页面
			selectAll(request, response, customertypeTbService);
		}

	}

	private void update(HttpServletRequest request,
			HttpServletResponse response,
			CustomerTypeTbService customertypeTbService)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		// 执行查询
		CustomerTypeTb customerTb = customertypeTbService.selectByTid(Integer
				.valueOf(id));
		request.setAttribute("customerTb", customerTb);
		// 执行跳转
		request.getRequestDispatcher(
				"pages/sys_config/customerType/customerType-edit.jsp").forward(
				request, response);
	}

	private void save(HttpServletRequest request, HttpServletResponse response,
			CustomerTypeTbService customertypeTbService)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String cstmType = request.getParameter("cstmType2");
		String state = request.getParameter("state");

		CustomerTypeTb customerTypeTb = new CustomerTypeTb();
		customerTypeTb.setTid(Integer.valueOf(id));
		customerTypeTb.setCstmType(cstmType);
		customerTypeTb.setState(Integer.valueOf(state));
		// 执行更新
		customertypeTbService.update(customerTypeTb);
		// 执行跳转
		selectAll(request, response, customertypeTbService);

	}

	private void select(HttpServletRequest request,HttpServletResponse response,
			CustomerTypeTbService customertypeTbService)
			throws ServletException, IOException {
		// 获取客户端传入的数据（获取用户id）
		String id = request.getParameter("id");
		// 执行查询
		CustomerTypeTb customerTb = customertypeTbService.selectByTid(Integer
				.valueOf(id));
		request.setAttribute("customerTb", customerTb);
		// 执行跳转
		request.getRequestDispatcher(
				"pages/sys_config/customerType/customerType-info.jsp").forward(
				request, response);

	}

	private void selectAll(HttpServletRequest request,
			HttpServletResponse response,
			CustomerTypeTbService customertypeTbService)
			throws ServletException, IOException {
		String cstmType = request.getParameter("cstmType");
		request.setAttribute("cstmType", cstmType);
		List<CustomerTypeTb> customerTypeTbList = customertypeTbService
				.selectAll(page, cstmType);
		request.setAttribute("customerTypeTbList", customerTypeTbList);
		request.getRequestDispatcher(
				"pages/sys_config/customerType/customerType-list.jsp").forward(
				request, response);
	}
	
	private void selectA(HttpServletRequest request,
			HttpServletResponse response,
			CustomerTypeTbService customertypeTbService) throws ServletException, IOException {
		
		//查询所有的客户类型，不分页，不模糊查询
		List<CustomerTypeTb> customerTypeTbLists = customertypeTbService.selectA();	
		request.setAttribute("customerTypeTbLists", customerTypeTbLists);
		request.getRequestDispatcher(
				"pages/sys_config/customerType/customerType-list.jsp").forward(
				request, response);
		
	}
}
