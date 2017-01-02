package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Keyword;
import com.entity.RiZhi;
import com.service.KeyWordCheckService;
import com.service.impl.KeyWordCheckServiceImpl;
import com.tool.Page;

public class KeyWordCheckServlet extends HttpServlet {
	private Page page = null;
	KeyWordCheckService kwcs=new KeyWordCheckServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String method=request.getParameter("method");
		if(method!=null&&!"".equals(method)){
		if("selectKey".equals(method)){
			selectKey(request, response);
		}if("selectKeywordByIds".equals(method)){
			try {
				selectKeywordByIds(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
		}
 
private void selectKeywordByIds(HttpServletRequest req,
			HttpServletResponse resp) throws Exception, IOException {
	// 获取页码
			// 创建page对象，封装分页信息
			String pageNum = req.getParameter("pageNow");//当前页
			int pageNow = pageNum == null || "".equals(pageNum) ? 1 : Integer
					.valueOf(pageNum);
			String name = req.getParameter("name");

			page = new Page(pageNow, 3, kwcs.selectPageSize(name));
			List<Keyword> keyword = kwcs.selectAll(page, name);
			req.setAttribute("page", page);
			req.setAttribute("name", name);
			req.setAttribute("keyword", keyword);
			req.getRequestDispatcher("pages/org/keyword/keyword-check.jsp").forward(req,
					resp);
		}
		


protected void selectKey(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	request.setCharacterEncoding("utf-8");
	// 创建page对象，封装分页信息
			String pageNum = request.getParameter("pageNow");//当前页
			int pageNow = pageNum == null || "".equals(pageNum) ? 1 : Integer
					.valueOf(pageNum);
			String name = request.getParameter("name");
			page = new Page(pageNow, 3,  kwcs.selectPageSize(name));
			List<Keyword> keyword = kwcs.selectAll(page,name);
			request.setAttribute("keyword", keyword);
			request.setAttribute("page", page);
			request.setAttribute("name", name);
			request.getRequestDispatcher("pages/org/keyword/keyword-check.jsp").forward(request, response);
}
	

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
