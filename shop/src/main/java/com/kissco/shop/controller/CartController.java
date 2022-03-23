package com.kissco.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kissco.shop.service.CartService;

@Controller
public class CartController {

	@Autowired
	private CartService sv;
}
