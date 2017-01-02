package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dao.impl.LicenseTbDaoImpl;
import com.entity.Company;
import com.entity.LicenseTb;
import com.google.gson.Gson;
import com.service.WebSiteService;
import com.service.impl.WebSiteServiceImpl;
import com.tool.Page;

public class WebSiteServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		WebSiteService webSiteService=new WebSiteServiceImpl();
		String type=request.getParameter("type");
		if(type!=null&&!"".equals(type)){
			
			if("select".equals(type)){
				select(request, response, webSiteService);
			}else if("view".equals(type)){
				selectById(request, response, webSiteService);
			}else if("selectByCname".equals(type)){
				selectByCname(request, response, webSiteService);
			}	
		}else{
			
		}	
	}
	private void select(HttpServletRequest request, HttpServletResponse response, WebSiteService webSiteService) throws ServletException, IOException{
		
		String cname=request.getParameter("cname");
		String userName=request.getParameter("userName");
		Company company=null;
		if(cname!=null&&!"".equals(cname)||userName!=null&&!"".equals(userName)){
			
			
			company=new Company();
			company.setCname(cname);
			company.setUserName(userName);
			
			request.setAttribute("company", company);
		}
		String spage=request.getParameter("pageNow");
		int pageNow=spage==null||"".equals(spage)?1:Integer.parseInt(spage);
		
		Page page=new Page(pageNow,5,webSiteService.selectCompanyRows(company));
		
		
		List<Company> companyList=webSiteService.selectInfoByCnameAndLowyer(company, page);
		
		request.setAttribute("companyList", companyList);
		request.setAttribute("page", page);
		request.getRequestDispatcher("pages/website/website-list.jsp").forward(request, response);
	}
	private void selectById(HttpServletRequest request, HttpServletResponse response, WebSiteService webSiteService) throws ServletException, IOException{
		int cid=1;
		String flag=request.getParameter("flag");
		if(flag!=null&&!"".equals(flag)){
			if("fromlist".equals(flag)){
				String id=request.getParameter("id");
				if(id!=null&&!"".equals(id)){
					cid=Integer.parseInt(id);
				}
			}else if("fromcname".equals(flag)){
				String cname=request.getParameter("cname");
				Company company=webSiteService.selectCname(cname);
				if(company!=null){
					cid=company.getCid();
				}
			}
			Company company=webSiteService.selectCompanyByCid(cid);
			LicenseTb licenseTb=new LicenseTbDaoImpl().selectLicenseTbById(company.getLicenseid());
			
			request.setAttribute("company", company);
			request.setAttribute("licenseTb", licenseTb);
			request.getRequestDispatcher("pages/website/website-info.jsp").forward(request, response);
		}else{
			select(request, response, webSiteService);
		}	
	}
	private void selectByCname(HttpServletRequest request, HttpServletResponse response, WebSiteService webSiteService) throws IOException{
		
		String cname=request.getParameter("cname");
		Company company=webSiteService.selectCname(cname);
		if(company!=null){
			Gson gson=new Gson();
			String gsonStr=gson.toJson(company);
			response.getWriter().print(gsonStr);
		}else{
			response.getWriter().print("");
		}
	}
}
