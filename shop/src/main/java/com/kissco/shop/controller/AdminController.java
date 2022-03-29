package com.kissco.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kissco.shop.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService sv;
	
	@RequestMapping(value = "/admin/joinForm", method = RequestMethod.GET)
	public String listForm() {
		return "admin/joinForm";
	}
}
