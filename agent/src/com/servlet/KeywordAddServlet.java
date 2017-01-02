package com.servlet;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Company;
import com.entity.Keyword;
import com.entity.User;
import com.google.gson.Gson;
import com.service.CompanyService;
import com.service.KeywordService;
import com.service.ServiceTbService;
import com.service.impl.CompanyServiceImpl;
import com.service.impl.KeywordServiceImpl;

import com.service.impl.PrepaymentServiceImpl;
import com.service.impl.ServiceTbServiceImpl;

import com.service.impl.ServiceTbServiceImpl;
import com.tool.DateUtil;

public class KeywordAddServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String method = req.getParameter("method");
		if ("search".equals(method)) {
			String cname = req.getParameter("cname");
			CompanyService companyService = new CompanyServiceImpl();
			Company company = companyService.selectCompanyByCname(cname);
			if (company != null) {
				int cid = company.getCid();
				req.getSession().setAttribute("cid", cid);
				Gson gson = new Gson();
				String json = gson.toJson(company);
				resp.getWriter().print(json);
			}
		} else if ("apply".equals(method)) {
			String keywordName = req.getParameter("keywordName");
			String svcType = req.getParameter("keywordClass");
			KeywordService keywordService = new KeywordServiceImpl();
			Keyword keyword = keywordService
					.selectKeywordBykeywordName(keywordName);
			if (keyword == null) {
				ServiceTbService serviceTbService = new ServiceTbServiceImpl();
				double money = serviceTbService.selectMoneyBySvcType(svcType);
				resp.getWriter().print(money);
			}
		} else if ("save".equals(method)) {
			String cname = req.getParameter("cname");
			String keywordName = req.getParameter("keywordName");
			String keywordClass = req.getParameter("keywordClass");
			String keywordYear = req.getParameter("keywordYear");
			int keywordYears = Integer.valueOf(keywordYear);
			String keyPrice = req.getParameter("keywordPrice");
			if (cname != null && !"".equals(cname) && keywordName != null
					&& !"".equals(keywordName) && !"请选择".equals(keywordClass)
					&& !"0".equals(keywordYear) && !"".equals(keyPrice)&&keyPrice!=null) {
				double keywordPrice=Double.parseDouble(keyPrice);
				Date newDate = new Date();
				Calendar c = Calendar.getInstance();
				c.add(Calendar.YEAR, keywordYears);
				String keywordNewdate = DateUtil.toAllString(newDate);
				String keywordDate = DateUtil.toAllString(c.getTime());
				User user = (User) req.getSession().getAttribute("user");
				int userId = user.getUserId();
				CompanyService companyService = new CompanyServiceImpl();
				Company company = companyService.selectCompanyByCname(cname);
				int cid = company.getCid();
				KeywordService keywordService = new KeywordServiceImpl();
				keywordService.insertKeyword(keywordName, cid, userId,
						keywordClass, keywordYears, keywordPrice,
						keywordNewdate, keywordDate, 1, 1, 1, 1);
				resp.getWriter().print("pages/org/keyword/keyword-check.jsp");
			}
		}
	}
}
