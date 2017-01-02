package com.test;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Test;
import com.service.UserService;

@Controller
public class TestSSM {
	@Autowired
	@Qualifier("userService")
	private UserService service;

	public void setService(UserService service) {
		this.service = service;
	}
	
	@RequestMapping("/getUser")
	public String test1(HttpServletRequest req){
		Test user=service.selectUserById(1);
		System.out.println(user.getName());
		req.setAttribute("user", user);
		return "test";
	}
}
