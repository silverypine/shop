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
	
	@RequestMapping(value = "/order/beforePaymentForm", method = RequestMethod.GET)
	public String beforePaymentForm() {
		return "order/beforePaymentForm";
	}
	
	@RequestMapping(value = "/order/pakingForm", method = RequestMethod.GET)
	public String paking() {
		return "order/pakingForm";
	}
	
	@RequestMapping(value = "/order/onDeliveryForm", method = RequestMethod.GET)
	public String onDelivery() {
		return "order/onDeliveryForm";
	}
	
	@RequestMapping(value = "/order/deliveryOverForm", method = RequestMethod.GET)
	public String deliveryOver() {
		return "order/deliveryOverForm";
	}
}
