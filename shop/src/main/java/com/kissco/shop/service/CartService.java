package com.kissco.shop.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kissco.shop.dao.CartDAO;

@Service
public class CartService {

	@Autowired
	private CartDAO dao;
	@Autowired
	private HttpSession ss;
}
