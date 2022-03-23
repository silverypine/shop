package com.kissco.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kissco.shop.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	private OrderService sv;
}
