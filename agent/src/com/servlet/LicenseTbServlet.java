package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.FinaceTb;
import com.entity.LicenseTb;
import com.google.gson.Gson;
import com.service.FinaceTbService;
import com.service.LicenseTbService;
import com.service.impl.FinaceTbServiceImpl;
import com.service.impl.LicenseTbServiceImpl;
import com.tool.Page;

public class LicenseTbServlet extends HttpServlet{
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
		LicenseTbService licenseTbService = new LicenseTbServiceImpl();
		// 获取页面码
		String pageNum = request.getParameter("pageNow");
		int pageNow = pageNum == null || "".equals(pageNum) ? 1 : Integer
			.valueOf(pageNum);
		String licsType = request.getParameter("licsType");
		// 创建page对象，封装分页信息
		page = new Page(pageNow, 5,
			licenseTbService.selectPageSize(licsType));
		request.setAttribute("page", page);

		if(method!=null&&!"".equals(method)){
			 if("insert".equals(method)){
				insert(request, response, licenseTbService);
			}else if("delete".equals(method)){
				delete(request, response, licenseTbService);
			}else if("update".equals(method)){
				update(request, response, licenseTbService);
			}else if("save".equals(method)){
				save(request, response, licenseTbService);
			}else if("selectById".equals(method)){
				selectById(request, response, licenseTbService);
			}else if("selectAll".equals(method)){
				selectAll(request, response, licenseTbService);
			}else if("select".equals(method)){
				select(request, response, licenseTbService);
			}
		}else{}
	}
 
 	private void insert(HttpServletRequest request, HttpServletResponse response,
		LicenseTbService licenseTbService) throws ServletException, IOException {
	    String licsType = request.getParameter("licsType1");
		String state = request.getParameter("state");
		 
		LicenseTb licenseTb = new LicenseTb();
		licenseTb.setLicsType(licsType);
		licenseTb.setState(Integer.valueOf(state));
		int result=licenseTbService.insert(licenseTb);
		if(result<0){
			request.setAttribute("licenseTb", licenseTb);
			request.setAttribute("state", state);
			request.getRequestDispatcher("pages/sys_config/license/license-add.jsp").forward(request, response);
		}else{
			selectAll(request, response, licenseTbService);
		}
	
 	}
 	private void delete(HttpServletRequest request, HttpServletResponse response,
		LicenseTbService licenseTbService) throws ServletException, IOException {
	  String id = request.getParameter("id");
		if (id == null || "".equals(id)) {
			response.sendRedirect("error.jsp");
		} else {
			// 执行删除
			licenseTbService.delete(Integer.valueOf(id));
			//跳转到list的页面
			selectAll(request, response, licenseTbService);
		}
 	}
 	private void update(HttpServletRequest request, HttpServletResponse response,
		LicenseTbService licenseTbService) throws ServletException, IOException {
 		String id = request.getParameter("id");
		// 执行查询
 		LicenseTb licenseTb = licenseTbService.selectById(Integer
				.valueOf(id));
		request.setAttribute("licenseTb",licenseTb);
		// 执行跳转
		request.getRequestDispatcher("pages/sys_config/license/license-edit.jsp").
		forward(request, response);
	
 	}
 	private void save(HttpServletRequest request, HttpServletResponse response,
		LicenseTbService licenseTbService) throws ServletException, IOException {
	    String id = request.getParameter("id");
		String licsType = request.getParameter("licsType2");
		String state = request.getParameter("state");

		LicenseTb licenseTb = new LicenseTb();
		licenseTb.setId(Integer.valueOf(id));
		licenseTb.setLicsType(licsType);
		licenseTb.setState(Integer.valueOf(state));
		// 执行更新
		licenseTbService.update(licenseTb);
		// 执行跳转
		selectAll(request, response, licenseTbService);
		
 	}
 	private void selectById(HttpServletRequest request,
		HttpServletResponse response, LicenseTbService licenseTbService) throws ServletException, IOException {
	       // 获取客户端传入的数据（获取用户id）
			String id = request.getParameter("id");
			// 执行查询
			LicenseTb licenseTb = licenseTbService.selectById(Integer.valueOf(id));
			request.setAttribute("licenseTb", licenseTb);
			// 执行跳转
			request.getRequestDispatcher("pages/sys_config/license/license-info.jsp").
			forward(request, response);
	
 	}
 	private void selectAll(HttpServletRequest request,
		HttpServletResponse response, LicenseTbService licenseTbService) throws ServletException, IOException {
	    String licsType = request.getParameter("licsType");
		request.setAttribute("licsType", licsType);
		List<LicenseTb> licsTypelist = licenseTbService
				.selectAll(page, licsType);
		request.setAttribute("licsTypelist", licsTypelist);
		request.getRequestDispatcher("pages/sys_config/license/license-list.jsp").forward(request, response);
		
	}	
private void select(HttpServletRequest request,
		HttpServletResponse response, LicenseTbService licenseTbService) throws IOException{
		
		List<LicenseTb> licenseTbList=licenseTbService.select();
		if(licenseTbList!=null){
			Gson gson=new Gson();
			String gsonStr=gson.toJson(licenseTbList);
			response.getWriter().print(gsonStr);
		}
		
		
	
	}
}
