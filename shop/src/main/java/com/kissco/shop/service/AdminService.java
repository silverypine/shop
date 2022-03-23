package com.kissco.shop.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kissco.shop.dao.AdminDAO;

@Service
public class AdminService {

	@Autowired
	private AdminDAO dao;
	@Autowired
	private HttpSession ss;
}
