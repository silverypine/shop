package com.kissco.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kissco.shop.service.AdminService;
import com.kissco.shop.vo.AdminVO;

@Controller
public class AdminController {

	@Autowired
	private AdminService sv;
	
	//회원가입 화면
	@RequestMapping(value = "/admin/joinForm", method = RequestMethod.GET)
	public String joinForm() {
		return "admin/joinForm";
	}
	
	//회원가입 처리
	@RequestMapping(value="/admin/join", method=RequestMethod.POST)
	public String join(AdminVO admin) {
		return sv.join(admin);
	}
	
	//로그인 화면
	@RequestMapping(value = "/admin/loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "admin/loginForm";
	}
	
	//로그인 처리
	@RequestMapping(value="/admin/login", method=RequestMethod.POST)
	public String login(AdminVO inputData) {
		return sv.login(inputData);
	}
	
	//로그아웃 처리
	@RequestMapping(value="/admin/logout", method=RequestMethod.GET)
	public String logout() {
		return sv.logout();
	}
	
}
