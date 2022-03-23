package com.kissco.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kissco.shop.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService sv;
}
