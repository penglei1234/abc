package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.CustomerTypeTb;
import com.entity.FinaceTb;
import com.google.gson.Gson;
import com.service.CustomerTypeTbService;
import com.service.FinaceTbService;
import com.service.impl.CustomerTypeTbServiceImpl;
import com.service.impl.FinaceTbServiceImpl;
import com.tool.Page;

public class FinaceTbServlet extends HttpServlet {
    private Page page=null;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String type=request.getParameter("type");
		FinaceTbService finaceTbService = new FinaceTbServiceImpl();
		// 获取页面码
		String pageNum = request.getParameter("pageNow");
		int pageNow = pageNum == null || "".equals(pageNum) ? 1 : Integer
				.valueOf(pageNum);
		String finaceType = request.getParameter("finaceType");
		// 创建page对象，封装分页信息
		page = new Page(pageNow, 5,
				finaceTbService.selectPageSize(finaceType));
		request.setAttribute("page", page);

		if(type!=null&&!"".equals(type)){
			if("select".equals(type)){
				select(request, response, finaceTbService);
			}else if("insert".equals(type)){
				insert(request, response, finaceTbService);
			}else if("delete".equals(type)){
				delete(request, response, finaceTbService);
			}else if("update".equals(type)){
				update(request, response, finaceTbService);
			}else if("save".equals(type)){
				save(request, response, finaceTbService);
			}else if("selectById".equals(type)){
				selectById(request, response, finaceTbService);
			}else if("selectAll".equals(type)){
				selectAll(request, response, finaceTbService);
			}
		}else{}
	}
     
	private void select(HttpServletRequest request, HttpServletResponse response, FinaceTbService finaceTbService) throws ServletException, IOException{
		
		List<FinaceTb> finaceTbList=finaceTbService.selectFinaceTb();
		
		if(finaceTbList!=null){
			Gson gson=new Gson();
			String gsonStr=gson.toJson(finaceTbList);
			response.getWriter().print(gsonStr);
		}
	}
     private void insert(HttpServletRequest request,
 			HttpServletResponse response, FinaceTbService finaceTbService) throws ServletException, IOException {
    	String finaceType = request.getParameter("finaceType1");
 		String state = request.getParameter("state");
 		 
 		FinaceTb finaceTb=new FinaceTb();
 		finaceTb.setFinaceType(finaceType);
 		finaceTb.setState(Integer.valueOf(state));
 		int result=finaceTbService.insert(finaceTb);
 		if(result<0){
 			request.setAttribute("finaceType", finaceType);
 			request.setAttribute("state", state);
 			request.getRequestDispatcher("pages/sys_config/finaceType/finType-add.jsp").forward(request, response);
 		}else{
 			selectAll(request, response, finaceTbService);
 		}
 		
 	}
     private void delete(HttpServletRequest request,
 			HttpServletResponse response, FinaceTbService finaceTbService) throws ServletException, IOException {
    	 String id = request.getParameter("id");
 		if (id == null || "".equals(id)) {
 			response.sendRedirect("error.jsp");
 		} else {
 			// 执行删除
 			finaceTbService.delete(Integer.valueOf(id));
 			//跳转到list的页面
 			selectAll(request, response, finaceTbService);
 		}

 	}
     private void update(HttpServletRequest request,
 			HttpServletResponse response, FinaceTbService finaceTbService) throws ServletException, IOException {
    	 String id = request.getParameter("id");
 		// 执行查询
    	 FinaceTb finaceTb = finaceTbService.selectById(Integer
 				.valueOf(id));
 		request.setAttribute("finaceTb", finaceTb);
 		// 执行跳转
 		request.getRequestDispatcher("pages/sys_config/finaceType/finType-edit.jsp").forward(request, response);
 		
 	}
     private void save(HttpServletRequest request, HttpServletResponse response,
 			FinaceTbService finaceTbService) throws ServletException, IOException {
    	String id = request.getParameter("id");
 		String finaceType = request.getParameter("finaceType2");
 		String state = request.getParameter("state");

 		FinaceTb finaceTb = new FinaceTb();
 		finaceTb.setId(Integer.valueOf(id));
 		finaceTb.setFinaceType(finaceType);
 		finaceTb.setState(Integer.valueOf(state));
 		// 执行更新
 		finaceTbService.update(finaceTb);
 		// 执行跳转
 		selectAll(request, response, finaceTbService);
 		
 	}

     private void selectById(HttpServletRequest request,
 			HttpServletResponse response, FinaceTbService finaceTbService) throws ServletException, IOException {
    	// 获取客户端传入的数据（获取用户id）
 		String id = request.getParameter("id");
 		// 执行查询
 		FinaceTb finaceTb = finaceTbService.selectById(Integer.valueOf(id));
 		request.setAttribute("finaceTb", finaceTb);
 		// 执行跳转
 		request.getRequestDispatcher("pages/sys_config/finaceType/finType-info.jsp").
 		forward(request, response);
 		
 	}

	private void selectAll(HttpServletRequest request,
			HttpServletResponse response, FinaceTbService finaceTbService) throws ServletException, IOException {
		String finaceType = request.getParameter("finaceType");
		request.setAttribute("finaceType", finaceType);
		List<FinaceTb> finaceTypelist = finaceTbService
				.selectAll(page, finaceType);
		request.setAttribute("finaceTypelist", finaceTypelist);
		request.getRequestDispatcher("pages/sys_config/finaceType/finType-list.jsp").forward(request, response);
		
	}	
}
