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
	
	//회원정보수정
		public MemberVO searchMember() {
			return dao.searchMember((String)ss.getAttribute("loginId"));
		}
	
	//회원정보 업데이트
	public String memberUpdate(MemberVO member) {
		String path = "";
		String loginId = (String)ss.getAttribute("loginId");
		member.setMemberId(loginId);
		int cnt = dao.memberUpdate(member); //업데이트가 실행된 횟수 성공 시 1
		
		if (cnt > 0) {
			path = "redirect:/member/mypageForm";
		} else {
			path = "redirect:/member/infoForm";
		}
		return path;
	}
	
}
