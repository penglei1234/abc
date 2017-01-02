package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Keyword;
import com.google.gson.Gson;
import com.service.KeywordService;
import com.service.impl.KeywordServiceImpl;
import com.tool.Page;

public class KeywordListServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String method=req.getParameter("method");
		if("search".equals(method)){
			String kname=req.getParameter("kname");
			KeywordService keywordService=new KeywordServiceImpl();
			Page page=new Page(0, 0, 0);
			List<Keyword> keywordNames=keywordService.selectKeywordNameByLike(kname,page);
			if(keywordNames!=null){
				
				Gson gson=new Gson();
				String json=gson.toJson(keywordNames);
				resp.getWriter().print(json);
			}
		}
	}
}
