package com.kissco.shop.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kissco.shop.dao.MemberDAO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO dao;
	@Autowired
	private HttpSession ss;
}
