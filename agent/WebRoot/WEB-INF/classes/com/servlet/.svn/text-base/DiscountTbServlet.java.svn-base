package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.DiscountTb;
import com.entity.LicenseTb;
import com.service.DiscountTbService;
import com.service.LicenseTbService;
import com.service.impl.DiscountTbServiceImpl;
import com.service.impl.LicenseTbServiceImpl;
import com.tool.Page;

public class DiscountTbServlet extends HttpServlet{
	private Page page=null;
@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
   doPost(request, response);
}
@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	String method=request.getParameter("method");
	DiscountTbService discountTbService = new DiscountTbServiceImpl();
	// 获取页面码
	String pageNum = request.getParameter("pageNow");
	int pageNow = pageNum == null || "".equals(pageNum) ? 1 : Integer
			.valueOf(pageNum);
	String dsctType = request.getParameter("dsctType");
	// 创建page对象，封装分页信息
	page = new Page(pageNow, 5,
			discountTbService.selectPageSize(dsctType));
	request.setAttribute("page", page);

	if(method!=null&&!"".equals(method)){
		 if("insert".equals(method)){
			insert(request, response, discountTbService);
		}else if("delete".equals(method)){
			delete(request, response, discountTbService);
		}else if("update".equals(method)){
			update(request, response, discountTbService);
		}else if("save".equals(method)){
			save(request, response, discountTbService);
		}else if("selectById".equals(method)){
			selectById(request, response, discountTbService);
		}else if("selectAll".equals(method)){
			selectAll(request, response, discountTbService);
		}
	}else{}
}
 
 private void insert(HttpServletRequest request, HttpServletResponse response,
		 DiscountTbService discountTbService) throws ServletException, IOException {
	    String dsctType = request.getParameter("dsctType1");
	    String dsctYear=request.getParameter("dsctYear1");
	    String realYear=request.getParameter("realYear1");
		String state = request.getParameter("state");
		 
		DiscountTb discountTb = new DiscountTb();
		discountTb.setDsctType(dsctType);
		discountTb.setDsctYear(Integer.valueOf(dsctYear));
		discountTb.setRealYear(Integer.valueOf(realYear));
		discountTb.setState(Integer.valueOf(state));
		int result=discountTbService.insert(discountTb);
		if(result<0){
			request.setAttribute("discountTb", discountTb);
			request.setAttribute("dsctYear", dsctYear);
			request.setAttribute("realYear", realYear);
			request.setAttribute("state", state);
			request.getRequestDispatcher("pages/sys_config/discount/discount-add.jsp").forward(request, response);
		}else{
			selectAll(request, response, discountTbService);
		}
	
}
private void delete(HttpServletRequest request, HttpServletResponse response,
		DiscountTbService discountTbService) throws ServletException, IOException {
	  String id = request.getParameter("id");
		if (id == null || "".equals(id)) {
			response.sendRedirect("error.jsp");
		} else {
			// 执行删除
			discountTbService.delete(Integer.valueOf(id));
			//跳转到list的页面
			selectAll(request, response, discountTbService);
		}
}
private void update(HttpServletRequest request, HttpServletResponse response,
		DiscountTbService discountTbService) throws ServletException, IOException {
	 String id = request.getParameter("id");
		// 执行查询
	 DiscountTb discountTb = discountTbService.selectById(Integer
				.valueOf(id));
		request.setAttribute("discountTb",discountTb);
		// 执行跳转
		request.getRequestDispatcher("pages/sys_config/discount/discount-edit.jsp").
		forward(request, response);
	
}
private void save(HttpServletRequest request, HttpServletResponse response,
		DiscountTbService discountTbService) throws ServletException, IOException {
	    String id = request.getParameter("id");
		String dsctType = request.getParameter("dsctType2");
		String dsctYear=request.getParameter("dsctYear2");
	    String realYear=request.getParameter("realYear2");
		String state = request.getParameter("state");

		DiscountTb discountTb = new DiscountTb();
		discountTb.setId(Integer.valueOf(id));
		discountTb.setDsctType(dsctType);
		discountTb.setDsctYear(Integer.valueOf(dsctYear));
		discountTb.setRealYear(Integer.valueOf(realYear));
		discountTb.setState(Integer.valueOf(state));
		
		// 执行更新
		discountTbService.update(discountTb);
		// 执行跳转
		selectAll(request, response, discountTbService);
		
}
private void selectById(HttpServletRequest request,
		HttpServletResponse response, DiscountTbService discountTbService) throws ServletException, IOException {
	       // 获取客户端传入的数据（获取用户id）
			String id = request.getParameter("id");
			// 执行查询
			DiscountTb discountTb = discountTbService.selectById(Integer.valueOf(id));
			request.setAttribute("discountTb", discountTb);
			// 执行跳转
			request.getRequestDispatcher("pages/sys_config/discount/discount-info.jsp").
			forward(request, response);
	
}
private void selectAll(HttpServletRequest request,
		HttpServletResponse response, DiscountTbService discountTbService) throws ServletException, IOException {
	    String dsctType = request.getParameter("dsctType");
		request.setAttribute("dsctType", dsctType);
		List<DiscountTb> dsctTypelist = discountTbService
				.selectAll(page, dsctType);
		request.setAttribute("dsctTypelist", dsctTypelist);
		request.getRequestDispatcher("pages/sys_config/discount/discount-list.jsp").forward(request, response);
		
	}	
}

