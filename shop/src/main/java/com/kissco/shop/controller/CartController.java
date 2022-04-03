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

import com.kissco.shop.service.CartService;
import com.kissco.shop.vo.CartVO;
import com.kissco.shop.vo.OrderVO;

@Controller
public class CartController {

	@Autowired
	private CartService sv;
	
	@RequestMapping(value = "/cart/listForm", method = RequestMethod.GET)
	public String listForm(Model model) {
		ArrayList<CartVO> cartList = sv.cartList();
		model.addAttribute("cartList", cartList);
		ArrayList<HashMap<String, Object>> cartProductList = sv.cartProductList();
		model.addAttribute("cartProductList", cartProductList);
		int sum = sv.sumProductPrice(cartProductList);
		model.addAttribute("sum", sum);
		return "cart/listForm";
	}
	
	@RequestMapping(value = "/cart/insertCart", method = RequestMethod.POST)
	public String insertCart(CartVO cart) {
		return sv.insertCart(cart);
	}
	
	@ResponseBody
	@RequestMapping(value = "/cart/delete", method = RequestMethod.GET)
	public boolean delete(@RequestParam(value = "cartCodeList[]", defaultValue = "") List<String> cartCodeList) {
		if (cartCodeList.isEmpty()) {
			return false;
		} else {
			sv.deleteCart(cartCodeList);
			return true;
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/cart/payment", method = RequestMethod.GET)
	public boolean payment(@RequestParam(value = "cartQuantityList[]", defaultValue = "") List<String> cartQuantityList
			,@RequestParam(value = "productCodeList[]", defaultValue = "") List<String> productCodeList
			,@RequestParam(value = "cartCodeList[]", defaultValue = "") List<String> cartCodeList) {
		if (cartQuantityList.isEmpty() || productCodeList.isEmpty() || cartCodeList.isEmpty()) {
			return false;
		} else {
			sv.createOrder();
			ArrayList<OrderVO> orderList = sv.orderList();
			System.out.println(orderList);
			sv.insertOrderDetailList(cartQuantityList, productCodeList, orderList);
			sv.deleteCart(cartCodeList);
			return true;
		}
	}
	
}
