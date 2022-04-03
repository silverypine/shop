package com.kissco.shop.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kissco.shop.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	private OrderService sv;
	
	@RequestMapping(value = "/order/listForm", method = RequestMethod.GET)
	public String listForm(Model model) {
		ArrayList<HashMap<String, Object>> list = sv.adminOrderList();
		model.addAttribute("list", list);
		return "order/listForm";
	}
	
	@RequestMapping(value = "/order/detail", method = RequestMethod.GET)
	public String detail(int orderCode, Model model) {
		ArrayList<HashMap<String, Object>> list = sv.adminOrderDetail(orderCode);
		model.addAttribute("list", list);
		return "order/detail";
	}
	
	@RequestMapping(value = "/order/beforePaymentForm", method = RequestMethod.GET)
	public String beforePaymentForm(Model model) {
		ArrayList<HashMap<String, Object>> list = sv.paymentList();
		model.addAttribute("list", list);
		return "order/beforePaymentForm";
	}
	
	@RequestMapping(value = "/order/pakingForm", method = RequestMethod.GET)
	public String paking(Model model) {
		ArrayList<HashMap<String, Object>> list = sv.deliveryReadyList();
		model.addAttribute("list", list);
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
	
	@ResponseBody
	@RequestMapping(value = "/order/paking", method = RequestMethod.GET)
	public boolean delete(@RequestParam(value = "orderCodeList[]", defaultValue = "") List<String> orderCodeList) {
		if (orderCodeList.isEmpty()) {
			return false;
		} else {
			sv.paking(orderCodeList);
			return true;
		}
	}
}
