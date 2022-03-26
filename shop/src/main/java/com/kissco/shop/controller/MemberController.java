package com.kissco.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kissco.shop.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService sv;
	
	@RequestMapping(value = "/member/joinForm", method = RequestMethod.GET)
	public String joinForm() {
		return "member/joinForm";
	}
}
