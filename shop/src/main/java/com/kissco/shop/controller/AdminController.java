package com.kissco.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kissco.shop.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService sv;
}
