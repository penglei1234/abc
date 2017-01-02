package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.CompanyQu;
import com.entity.CompanySheng;
import com.entity.CompanyShi;
import com.google.gson.Gson;
import com.tool.Sheng;

public class ShengServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method=request.getParameter("method");
		if(method!=null&&!"".equals(method)){
			if("selectsheng".equals(method)){
				selectSheng(request, response);
			}else if("selectshi".equals(method)){
				selectshi(request, response);
			}else if("selectqu".equals(method)){
				selectqu(request, response);
			}
		}else{}
		
	}
	private void selectSheng(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		List<CompanySheng> shengList=new Sheng().select();
		
		if(shengList!=null){

			Gson gson=new Gson();
			String gsonStr=gson.toJson(shengList);
			response.getWriter().print(gsonStr);
		}	
	}
	private void selectshi(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		String id=request.getParameter("sid");
		
		if(id!=null&&!"".equals(id)){
			List<CompanyShi> shiList=new Sheng().selectShi(Integer.parseInt(id));
			if(shiList!=null){
				Gson gson=new Gson();
				String gsonStr=gson.toJson(shiList);
				response.getWriter().print(gsonStr);
			}
		}
	}
	private void selectqu(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		String id=request.getParameter("hid");
		
		if(id!=null&&!"".equals(id)){
			List<CompanyQu> quList=new Sheng().selectQu(Integer.parseInt(id));
			if(quList!=null){
				Gson gson=new Gson();
				String gsonStr=gson.toJson(quList);
				response.getWriter().print(gsonStr);
			}
		}
	}
}
