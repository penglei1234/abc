package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.FinaceTb;
import com.entity.ServiceTb;
import com.google.gson.Gson;
import com.service.FinaceTbService;
import com.service.ServiceTbService;
import com.service.impl.FinaceTbServiceImpl;
import com.service.impl.ServiceTbServiceImpl;
import com.tool.Page;

public class ServiceTbServlet extends HttpServlet{
	private Page page=null;
@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	doPost(request, response);
}
@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	String method=request.getParameter("mthod");
	ServiceTbService serviceTbService = new ServiceTbServiceImpl();
	// 获取页面码
	String pageNum = request.getParameter("pageNow");
	int pageNow = pageNum == null || "".equals(pageNum) ? 1 : Integer
			.valueOf(pageNum);
	String svcType = request.getParameter("svcType");
	// 创建page对象，封装分页信息
	page = new Page(pageNow, 5,
			serviceTbService.selectPageSize(svcType));
	request.setAttribute("page", page);

	if(method!=null&&!"".equals(method)){
	    if("insert".equals(method)){
			insert(request, response, serviceTbService);
		}else if("delete".equals(method)){
			delete(request, response, serviceTbService);
		}else if("update".equals(method)){
			update(request, response, serviceTbService);
		}else if("save".equals(method)){
			save(request, response, serviceTbService);
		}else if("selectById".equals(method)){
			selectById(request, response, serviceTbService);
		}else if("selectAll".equals(method)){
			selectAll(request, response, serviceTbService);
		}
	}else{}
}
 
private void insert(HttpServletRequest request, HttpServletResponse response,
		ServiceTbService serviceTbService) throws ServletException, IOException {
	    String svcType = request.getParameter("svcType1");
	    String money=request.getParameter("money");
		String state = request.getParameter("state");
		 
		ServiceTb serviceTb=new ServiceTb();
		serviceTb.setSvcType(svcType);
		serviceTb.setMoney(Double.valueOf(money));
		serviceTb.setState(Integer.valueOf(state));
		int result=serviceTbService.insert(serviceTb);
		if(result<0){
			request.setAttribute("svcType", svcType);
			request.setAttribute("state", state);
			request.getRequestDispatcher("pages/sys_config/serviceType/serType-add.jsp").forward(request, response);
		}else{
			selectAll(request, response, serviceTbService);
		}
	
}
private void delete(HttpServletRequest request, HttpServletResponse response,
		ServiceTbService serviceTbService) throws ServletException, IOException {
	String id = request.getParameter("id");
	if (id == null || "".equals(id)) {
		response.sendRedirect("error.jsp");
	} else {
		// 执行删除
		serviceTbService.delete(Integer.valueOf(id));
		//跳转到list的页面
		selectAll(request, response, serviceTbService);
	}
	
 }
private void update(HttpServletRequest request, HttpServletResponse response,
		ServiceTbService serviceTbService) throws ServletException, IOException {
	 String id = request.getParameter("id");
	// 执行查询
	 ServiceTb serviceTb= serviceTbService.selectById(Integer
				.valueOf(id));
	request.setAttribute("serviceTb", serviceTb);
	// 执行跳转
	request.getRequestDispatcher("pages/sys_config/serviceType/serType-edit.jsp").forward(request, response);
	
 }
private void save(HttpServletRequest request, HttpServletResponse response,
		ServiceTbService serviceTbService) throws ServletException, IOException {
		String id = request.getParameter("id");
		String svcType = request.getParameter("svcType2");
		String money=request.getParameter("money");
		String state = request.getParameter("state");
	
		ServiceTb serviceTb= new ServiceTb();
		serviceTb.setId(Integer.valueOf(id));
		serviceTb.setSvcType(svcType);
		serviceTb.setMoney(Double.valueOf(money));
		serviceTb.setState(Integer.valueOf(state));
		// 执行更新
		serviceTbService.update(serviceTb);
		// 执行跳转
		selectAll(request, response, serviceTbService);	
  }
private void selectById(HttpServletRequest request,
		HttpServletResponse response, ServiceTbService serviceTbService) throws ServletException, IOException {
	   // 获取客户端传入的数据（获取用户id）
	    String id = request.getParameter("id");
	   // 执行查询
		ServiceTb serviceTb = serviceTbService.selectById(Integer.valueOf(id));
		request.setAttribute("serviceTb", serviceTb);
		// 执行跳转
		request.getRequestDispatcher("pages/sys_config/serviceType/serType-info.jsp").
		forward(request, response);
 }
private void selectAll(HttpServletRequest request,
		HttpServletResponse response, ServiceTbService serviceTbService) throws ServletException, IOException {
	String svcType = request.getParameter("svcType");
	request.setAttribute("svcType", svcType);
	List<ServiceTb> svcTypelist = serviceTbService
			.selectAll(page, svcType);
	request.setAttribute("finaceTypelist", svcTypelist);
	request.getRequestDispatcher("pages/sys_config/serviceType/serType-list.jsp").forward(request, response);
  }
}

