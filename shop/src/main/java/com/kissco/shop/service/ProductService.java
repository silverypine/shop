package com.kissco.shop.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kissco.shop.dao.ProductDAO;

@Service
public class ProductService {

	@Autowired
	private ProductDAO dao;
	@Autowired
	private HttpSession ss;
}
