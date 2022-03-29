package com.kissco.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kissco.shop.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService sv;
	
	@RequestMapping(value = "/product/insertForm", method = RequestMethod.GET)
	public String insertForm() {
		return "product/insertForm";
	}
	
	@RequestMapping(value = "/product/listForm", method = RequestMethod.GET)
	public String listForm() {
		return "product/listForm";
	}
	
	@RequestMapping(value = "/product/infoForm", method = RequestMethod.GET)
	public String infoForm() {
		return "product/infoForm";
	}
}
