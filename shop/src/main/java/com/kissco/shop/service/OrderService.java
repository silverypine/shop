package com.kissco.shop.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kissco.shop.dao.OrderDAO;

@Service
public class OrderService {

	@Autowired
	private OrderDAO dao;
	@Autowired
	private HttpSession ss;
}