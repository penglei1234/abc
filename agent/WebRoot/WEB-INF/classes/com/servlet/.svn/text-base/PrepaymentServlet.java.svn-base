package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Company;
import com.entity.Prepayment;
import com.service.WebSiteService;
import com.service.impl.WebSiteServiceImpl;
import com.tool.DateUtil;
import com.tool.Page;

public class PrepaymentServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method=request.getParameter("method");
		WebSiteService webSiteService=new WebSiteServiceImpl();
		if("select".equals(method)){
			select(request, response, webSiteService);
		}	
	}
	private void select(HttpServletRequest request,HttpServletResponse response,WebSiteService webSiteService){
		String finaceType=request.getParameter("finaceType");
		String datetime=request.getParameter("datetime");
		Prepayment prepayment=null;
		if(finaceType!=null&&"".equals(finaceType)||datetime!=null&&"".equals(datetime)){
			prepayment=new Prepayment();
			prepayment.setFinaceType(finaceType);
			prepayment.setDatetime(DateUtil.toDate(datetime));
		}
		String spage=request.getParameter("pageNow");
		int pageNow=spage==null?1:Integer.parseInt(spage);
		
	}
}
