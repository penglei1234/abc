package com.servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.impl.LicenseTbDaoImpl;
import com.entity.Company;
import com.entity.LianXiRen;
import com.entity.LicenseTb;
import com.entity.User;
import com.service.CompanyService;
import com.service.WebSiteService;
import com.service.impl.CompanyServiceImpl;
import com.service.impl.WebSiteServiceImpl;
import com.tool.DateUtil;
import com.tool.Page;

public class CompanyServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		CompanyService companyService=new CompanyServiceImpl();
		WebSiteService webSiteService=new WebSiteServiceImpl();
		String method=request.getParameter("method");
		if("save".equals(method)){
			save(request, response, companyService, webSiteService);	
		} else if("select".equals(method)){
			select(request, response, webSiteService);
		} else if("update".equals(method)){
			update(request, response, companyService, webSiteService);
		} else if("delete".equals(method)){
			delete(request, response, companyService, webSiteService);
		} else if("charge".equals(method)){
			charge(request, response, companyService, webSiteService);    
		} else if("view".equals(method)){
			selectById(request, response, webSiteService);
		} else if("updateCompany".equals(method)){
			updateCompany(request, response, companyService, webSiteService);
		} else if("saveCharge".equals(method)){
			saveCharge(request, response, companyService, webSiteService);
		}		
	
	}

	private void select(HttpServletRequest request, HttpServletResponse response, WebSiteService webSiteService) throws ServletException, IOException{

		
		String cname=request.getParameter("incname");
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
		request.getRequestDispatcher("pages/proxy/customer/customer-list.jsp").forward(request, response);
		
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
			request.getRequestDispatcher("pages/proxy/customer/customer-edit.jsp").forward(request, response);
		}else{
			select(request, response, webSiteService);
		}	
	}
	private void save(HttpServletRequest request, HttpServletResponse response, CompanyService companyService, WebSiteService webSiteService) throws ServletException, IOException{
		
		//获取传来的company的数据
		String cname=request.getParameter("cname");
		String cstmType=request.getParameter("cstmType");
		String state=request.getParameter("state");
		String lowyer=request.getParameter("lowyer");
		String regtime=request.getParameter("regtime");
		String licenseid=request.getParameter("licsType");
		String licensecard=request.getParameter("licensecard");
		String country=request.getParameter("country");
		String sheng=request.getParameter("sheng");
		String shi=request.getParameter("shi");
		String qu=request.getParameter("qu");
		String fax=request.getParameter("fax");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String remark=request.getParameter("remark");
		String isdelete=request.getParameter("isdelte");
		String cweb=request.getParameter("cweb");
		String balance=request.getParameter("balance");
		//获取lianxiren传来的数据
		String[] lxname=request.getParameterValues("lxname");
		String[] lxphone=request.getParameterValues("lxphone");
		String[] lxfax=request.getParameterValues("lxfax");
		String[] lxemail=request.getParameterValues("email");
		String[] lxdepartment=request.getParameterValues("department");
		//创建company对象，将company属性加入到company对象中
		Company company=new Company();
		
		company.setCname(cname);
		if("0".equals(cstmType)){
			company.setTid(1);
		}
		else if("1".equals(cstmType)){
			company.setTid(2);
		}
		else if("2".equals(cstmType)){
			company.setTid(3);
		}
		if("启用".equals(state)){
			company.setState(1);
		}else if("禁用".equals(state)){
			company.setState(0);
		}
		
		company.setLowyer(lowyer);
		company.setRegtime(DateUtil.toDate(regtime));
		company.setLicenseid(Integer.parseInt(licenseid));
		company.setCountry(country);
		company.setFax(fax);
		company.setPhone(phone);
		company.setAddress(address);
		company.setLicensecard(licensecard);
		company.setSheng(sheng);
		company.setShi(shi);
		company.setQu(qu);
		company.setRemark(remark);
		int value=isdelete==null||"".equals(isdelete)?1:Integer.parseInt(isdelete);
		company.setIsdelete(value);
		String web=cweb==null||"".equals(cweb)?"http://":cweb;
		company.setCweb(web);
		User user=(User)request.getSession().getAttribute("user");
		company.setUserId(user.getUserId());
		company.setUserName(user.getUserRealName());
		double bala=balance==null||"".equals(balance)?0:Double.parseDouble(balance);
		company.setBalance(bala);
		
		//调用service方法，将company对象传到service中，插入数据库
		CompanyService cs=new CompanyServiceImpl();
		int row=cs.insertCompany(company);
		int cid=cs.selectCidByCname(cname);
		
		
			//创建lianxiren集合，将lianxiren数据封装到集合中
			List<LianXiRen> lxrList=new ArrayList<LianXiRen>();
			
			if(lxname!=null){
				for (int i = 0; i < lxname.length; i++) {	
					LianXiRen lxr = new LianXiRen();
					lxr.setLxname(lxname[i]);
					lxr.setPhone(lxphone[i]);
					lxr.setFax(lxfax[i]);
					lxr.setEmail(lxemail[i]);
					lxr.setDepartment(lxdepartment[i]);
					lxr.setCid(cid);
					lxrList.add(lxr);
				}
			}
			//遍历lianxiren集合。将数据插入到数据库中
			for (LianXiRen lxren:lxrList) {
				 cs.insertLianXiRen(lxren);
			}	
			select(request, response, webSiteService);
	}

	private void update(HttpServletRequest request, HttpServletResponse response, CompanyService companyService, WebSiteService webSiteService) throws ServletException, IOException{
		
		String id=request.getParameter("id");
		String state=request.getParameter("state");
			if(id!=null&&!"".equals(id)||state!=null&&!"".equals(state)){
				if("0".equals(state)){
					companyService.updateCompanyState(1, Integer.parseInt(id));
				}else{
					companyService.updateCompanyState(0, Integer.parseInt(id));
				}
			}			
		
		select(request, response, webSiteService);
	}
	private void delete(HttpServletRequest request, HttpServletResponse response, CompanyService companyService, WebSiteService webSiteService) throws ServletException, IOException{
		
		String id=request.getParameter("id");
		String isdelete=request.getParameter("isdelete");
		if(id!=null&&!"".equals(id)||isdelete!=null&&!"".equals(isdelete)){
			if("0".equals(isdelete)){
				companyService.deleteCompany(1, Integer.parseInt(id));
			}else{
				companyService.deleteCompany(0, Integer.parseInt(id));
			}
		}
		select(request, response, webSiteService);
	}
	private void updateCompany(HttpServletRequest request, HttpServletResponse response, CompanyService companyService, WebSiteService webSiteService) throws ServletException, IOException{
		
		//获取传来的company的数据
		String cid=request.getParameter("cid");
		String cname=request.getParameter("cname");
		String cstmType=request.getParameter("cstmType");
		String state=request.getParameter("state");
		String lowyer=request.getParameter("lowyer");
		String regtime=request.getParameter("regtime");
		String licenseid=request.getParameter("licsType");
		String licensecard=request.getParameter("licensecard");
		String country=request.getParameter("country");
		String sheng=request.getParameter("sheng");
		String shi=request.getParameter("shi");
		String qu=request.getParameter("qu");
		String fax=request.getParameter("fax");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String remark=request.getParameter("remark");
		String isdelete=request.getParameter("isdelte");
		String cweb=request.getParameter("cweb");
		String balance=request.getParameter("balance");
		//获取lianxiren传来的数据
		String[] lxid=request.getParameterValues("lxid");
		String[] lxname=request.getParameterValues("lxname");
		String[] lxphone=request.getParameterValues("lxphone");
		String[] lxfax=request.getParameterValues("lxfax");
		String[] lxemail=request.getParameterValues("email");
		String[] lxdepartment=request.getParameterValues("department");
		//创建company对象，将company属性加入到company对象中
		Company company=new Company();
		
		company.setCid(Integer.parseInt(cid));
		company.setCname(cname);
		if("0".equals(cstmType)){
			company.setTid(1);
		}
		else if("1".equals(cstmType)){
			company.setTid(2);
		}
		else if("2".equals(cstmType)){
			company.setTid(3);
		}
		if("启用".equals(state)){
			company.setState(1);
		}else if("禁用".equals(state)){
			company.setState(0);
		}
		
		company.setLowyer(lowyer);
		company.setRegtime(DateUtil.toDate(regtime));
		company.setLicenseid(Integer.parseInt(licenseid));
		company.setCountry(country);
		company.setFax(fax);
		company.setPhone(phone);
		company.setAddress(address);
		company.setLicensecard(licensecard);
		company.setSheng(sheng);
		company.setShi(shi);
		company.setQu(qu);
		company.setRemark(remark);
		int value=isdelete==null||"".equals(isdelete)?1:Integer.parseInt(isdelete);
		company.setIsdelete(value);
		String web=cweb==null||"".equals(cweb)?"http://":cweb;
		company.setCweb(web);
		User user=(User)request.getSession().getAttribute("user");
		company.setUserId(user.getUserId());
		company.setUserName(user.getUserRealName());
		double bala=balance==null||"".equals(balance)?0:Double.parseDouble(balance);
		company.setBalance(bala);
		
		//调用service方法，将company对象传到service中，插入数据库
		int res=companyService.updateCompany(company);
		
		
		if(lxname!=null){
			for (int i = 0; i < lxname.length; i++) {	
				LianXiRen lxr = new LianXiRen();
				lxr.setLxid(Integer.parseInt(lxid[i]));
				lxr.setLxname(lxname[i]);
				lxr.setPhone(lxphone[i]);
				lxr.setFax(lxfax[i]);
				lxr.setEmail(lxemail[i]);
				lxr.setDepartment(lxdepartment[i]);
				lxr.setCid(Integer.parseInt(cid));
				
				companyService.updateLianXiRen(lxr);
			}
		}
		select(request, response, webSiteService);
	}
	private void charge(HttpServletRequest request, HttpServletResponse response, CompanyService companyService, WebSiteService webSiteService) throws ServletException, IOException{
		
		String id=request.getParameter("id");
		Company company=webSiteService.selectCompanyByCid(Integer.parseInt(id));
		request.setAttribute("company", company);
		request.getRequestDispatcher("pages/proxy/customer/customer-charge.jsp").forward(request, response);	
	}
	private void saveCharge(HttpServletRequest request, HttpServletResponse response, CompanyService companyService, WebSiteService webSiteService) throws ServletException, IOException{
		
		String cid=request.getParameter("cid");
		String charge=request.getParameter("charge");
		
		companyService.updateCompanyBalance(Double.parseDouble(charge), Integer.parseInt(cid));
		select(request, response, webSiteService);
	}
}

	