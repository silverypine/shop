package com.kissco.shop.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kissco.shop.dao.AdminDAO;
import com.kissco.shop.vo.AdminVO;

@Service
public class AdminService {

	@Autowired
	private AdminDAO dao;
	@Autowired
	private HttpSession ss;
	
	public String join(AdminVO admin) {
		String path = "";
		int cnt = dao.join(admin);

		if (cnt > 0) {
			path = "redirect:/";
		} else {
			path = "redirect:/admin/joinForm";
		}
		return path;
	}

	public String login(AdminVO inputData) {
		String path = "";
		AdminVO searchData = dao.searchAdmin(inputData.getAdminId());
		if (searchData == null) {
			path = "redirect:/admin/loginForm";
		} else if (inputData.getAdminPw().equals(searchData.getAdminPw())) {
			ss.setAttribute("loginId", searchData.getAdminId());
			path = "redirect:/product/insertForm";
		} else {
			path = "redirect:/admin/loginForm";
		}
		return path;
	}
	
	public String logout() {
		ss.removeAttribute("loginId");
		return "redirect:/";
	}
}
