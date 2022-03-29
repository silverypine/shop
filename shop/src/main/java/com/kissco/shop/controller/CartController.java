package com.kissco.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kissco.shop.service.CartService;

@Controller
public class CartController {

	@Autowired
	private CartService sv;
	
	@RequestMapping(value = "/cart/cartList", method = RequestMethod.GET)
	public String listForm() {
		return "cart/cartList";
	}
}
