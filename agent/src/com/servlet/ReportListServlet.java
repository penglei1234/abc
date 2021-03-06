package com.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.ReportList;
import com.entity.User;
import com.service.ReportListService;

import com.service.WebSiteService;
import com.service.impl.ReportListServiceImpl;
import com.service.impl.WebSiteServiceImpl;
import com.tool.ExportExcel;
import com.tool.Page;

public class ReportListServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String type=request.getParameter("type");
		ReportListService reportListService=new ReportListServiceImpl();
		if(type!=null&&!"".equals(type)){
			if("insert".equals(type)){
				try {
					insertReportList(request, response, reportListService);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}else if("select".equals(type)){
				select(request, response, reportListService);
			}else if("selectByIds".equals(type)){
				selectByIds(request, response, reportListService);
			}
		}else{}
		
	}
	private void insertReportList(HttpServletRequest request, HttpServletResponse response,
			ReportListService reportListService) throws ParseException, IOException{
		
		
		String rep_agentname=((User)request.getSession().getAttribute("user")).getUserLogName();
		String rep_custerm=request.getParameter("cname");
		String rep_finaceType=request.getParameter("finaceType");
		String rep_money=request.getParameter("money");
		//String rep_nowdate=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date(System.currentTimeMillis())); 
		String rep_remark=request.getParameter("remark");
		//String rep_userid=request.getParameter("userId"); 
		
		ReportList reportList=new ReportList();
		reportList.setRepAgentName(rep_agentname);
		reportList.setRepCusterm(rep_custerm);
		reportList.setRepFinaType(rep_finaceType);
		reportList.setRepMoney(Double.parseDouble(rep_money));
		reportList.setRepNowDate(new Date());
		reportList.setRepRemark(rep_remark);
		//reportList.setRepUserId(Integer.parseInt(rep_userid));
		
		//添加reportList对象
		reportListService.insertReportList(reportList);
		//根据客户名称更新company表中的数据
		WebSiteService websiteService=new WebSiteServiceImpl();
		websiteService.updateCompanyBalance(reportList);
		response.sendRedirect("reportList?type=select");
	}
	private void select(HttpServletRequest request, HttpServletResponse response,
			ReportListService reportListService) throws ServletException, IOException{
		
		String startTime=request.getParameter("startTime");
		String endTime=request.getParameter("endTime");
		String finaceType=request.getParameter("finaceType");
		
		if(startTime!=null&&!"".equals(startTime)||endTime!=null&&!"".equals(endTime)||finaceType!=null&&!"".equals(finaceType)){
			
			request.setAttribute("finaceType", finaceType);
			request.setAttribute("startTime", startTime);
			request.setAttribute("endTime", endTime);
		}
		
		
		String spage=request.getParameter("pageNow");
		int pageNow=spage==null||"".equals(spage)?1:Integer.parseInt(spage);
		
		Page page=new Page(pageNow, 5, new ReportListServiceImpl().selectReportListRows(finaceType, startTime, endTime));
		List<ReportList> reportList=reportListService.selectReportListByTypeAndDate(finaceType, startTime, endTime, page);	
		if(reportList.size()!=0){
			request.setAttribute("reportList", reportList);
			
		} else{
			request.setAttribute("messInfo", "没有查询到结果");
		}    
		request.setAttribute("page", page);
		request.getRequestDispatcher("pages/report/report-list.jsp").forward(request, response);
	}
	private void selectByIds(HttpServletRequest request, HttpServletResponse response,
			ReportListService reportListService) throws ServletException, IOException{
		
		String[] sid=request.getParameterValues("id");
		int[] repId=new int[sid.length];
		if(sid!=null&&!"".equals(sid)){
			for(int i=0;i<sid.length;i++){
				repId[i]=Integer.parseInt(sid[i]);
			}
			List<ReportList> reportList=reportListService.selectReportListByIds(repId);
			
			String rootPath=getServletContext().getRealPath("/");
			String filePath=rootPath+"export\\"+UUID.randomUUID().toString()+".xls";
			ExportExcel.exportExcel(reportList, filePath);
			
			select(request, response, reportListService);
		}
	}
}
