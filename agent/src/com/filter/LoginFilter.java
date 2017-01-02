package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.User;

public class LoginFilter implements Filter {

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		
		User user=(User) ((HttpServletRequest)arg0).getSession().getAttribute("user");
		String url=((HttpServletRequest)arg0).getRequestURI();
		if(user!=null||url.contains("login")||url.contains("image")||url.contains("CreateImage")){
			arg2.doFilter(arg0, arg1);
		}else{
			((HttpServletResponse)arg1).sendRedirect("/agent/login.jsp");
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}

}
