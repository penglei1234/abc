package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.RiZhi;
import com.service.RiZhiService;
import com.service.impl.RiZhiServiceImpl;
import com.tool.Page;

public class RiZhiServlet extends HttpServlet {
	private Page page = null;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		//获取method
	String method=req.getParameter("method");
	//创建RiZhiService
	RiZhiService riZhiService=new RiZhiServiceImpl();
	
	
	//判断method方法
	
	if("selectAll".equals(method)){
		selectAll(req, resp,riZhiService);
	}/*else if("select".equals(method)){
		select(req, resp,riZhiService);
	}*/

	}

	/*private void select(HttpServletRequest req, HttpServletResponse resp,
			RiZhiService riZhiService) throws ServletException, IOException {
		List<RiZhi> riZhiLists=riZhiService.selectA(page);
		req.setAttribute("riZhiLists", riZhiLists);
		req.getRequestDispatcher("pages/proxy/log/log-list.jsp").forward(req, resp);
	}*/

	private void selectAll(HttpServletRequest req, HttpServletResponse resp,
			RiZhiService riZhiService) throws ServletException, IOException {
		
		//获取页码
		
		// 创建page对象，封装分页信息
		String pageNum=req.getParameter("pageNow");
		int pageNow=pageNum==null || "".equals(pageNum)?1:Integer.valueOf(pageNum);
		String rzname=req.getParameter("rzname");
		String beginDate=req.getParameter("beginDate");
		String endDate=req.getParameter("endDate");
		 page=new Page(pageNow,3,riZhiService.selectPageSize(rzname, beginDate, endDate));
		List<RiZhi> riZhiList=riZhiService.selectAll(page, rzname, beginDate, endDate);
		req.setAttribute("page", page);
		req.setAttribute("rzname", rzname);
		req.setAttribute("beginDate", beginDate);
		req.setAttribute("endDate", endDate);
		req.setAttribute("riZhiList", riZhiList);
		req.getRequestDispatcher("pages/proxy/log/log-list.jsp").forward(req, resp);
	}
}
