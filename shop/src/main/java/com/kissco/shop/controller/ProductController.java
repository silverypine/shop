package com.kissco.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kissco.shop.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService sv;
}