package com.kissco.shop.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kissco.shop.dao.MemberDAO;
import com.kissco.shop.vo.MemberVO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO dao;
	@Autowired
	private HttpSession ss;
	
	public String join(MemberVO member) {
		String path = "";
		int cnt = dao.join(member);
		
		if (cnt > 0) {
			path = "redirect:/";
		} else {
			path = "redirect:/member/joinForm";
		}
		return path;
	}
	
	public String login(MemberVO inputData) {
		String path = "";
		MemberVO searchData = dao.searchMember(inputData.getMemberId());
		if (searchData == null) {
			path = "redirect:/member/loginForm";
		} else if (inputData.getMemberPw().equals(searchData.getMemberPw())) {
			ss.setAttribute("loginId", searchData.getMemberId());
			path = "redirect:/";
		} else {
			path = "redirect:/member/loginForm";
		}
		return path;
	}
	
	public String logout() {
		ss.removeAttribute("loginId");
		return "redirect:/";
	}
}
