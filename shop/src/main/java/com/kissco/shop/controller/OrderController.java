package com.kissco.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kissco.shop.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	private OrderService sv;
	
	@RequestMapping(value = "/order/listForm", method = RequestMethod.GET)
	public String listForm() {
		return "order/listForm";
	}
	
	@RequestMapping(value = "/order/beforePayment", method = RequestMethod.GET)
	public String beforeDeposit() {
		return "order/beforePayment";
	}
	
	@RequestMapping(value = "/order/paking", method = RequestMethod.GET)
	public String paking() {
		return "order/paking";
	}
	
	@RequestMapping(value = "/order/onDelivery", method = RequestMethod.GET)
	public String onDelivery() {
		return "order/onDelivery";
	}
	
	@RequestMapping(value = "/order/deliveryOver", method = RequestMethod.GET)
	public String deliveryOver() {
		return "order/deliveryOver";
	}
}
