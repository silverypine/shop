package com.kissco.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kissco.shop.vo.MemberVO;
import com.kissco.shop.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService sv;
	
	@RequestMapping(value = "/member/joinForm", method = RequestMethod.GET)
	public String joinForm() {
		return "member/joinForm";
	}
	
	@RequestMapping(value = "/member/loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "member/loginForm";
	}
	
	@RequestMapping(value = "/member/infoForm", method = RequestMethod.GET)
	public String infoForm() {
		return "member/infoForm";
	}
	
	@RequestMapping(value = "/member/mypageForm", method = RequestMethod.GET)
	public String mypageForm() {
		return "member/mypageForm";
	}
	
	@RequestMapping(value = "/member/paymentForm", method = RequestMethod.GET)
	public String mypage() {
		return "member/paymentForm";
	}
	
	@RequestMapping(value="/member/join", method=RequestMethod.POST)
	public String join(MemberVO member) {
		return sv.join(member);
	}
	
	@RequestMapping(value="/member/login", method=RequestMethod.POST)
	public String login(MemberVO inputData) {
		return sv.login(inputData);
	}
	
	@RequestMapping(value="/member/logout", method=RequestMethod.GET)
	public String logout() {
		return sv.logout();
	}
}
