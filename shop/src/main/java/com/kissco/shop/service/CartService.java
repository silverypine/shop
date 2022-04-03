package com.kissco.shop.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kissco.shop.dao.CartDAO;
import com.kissco.shop.vo.CartVO;
import com.kissco.shop.vo.OrderDetailVO;
import com.kissco.shop.vo.OrderVO;
import com.kissco.shop.vo.ProductVO;

@Service
public class CartService {

	@Autowired
	private CartDAO dao;
	@Autowired
	private HttpSession ss;
	
	public String insertCart(CartVO cart) {
		String path = "";
		String loginId = (String)ss.getAttribute("loginId");
		cart.setMemberId(loginId);
		int cnt = dao.insertCart(cart);
		if (cnt > 0) {
			path = "redirect:/cart/listForm";
		} else {
			path = "redirect:/product/infoForm?productCode=" + cart.getProductCode();
		}
		return path;
	}
	
	public ArrayList<CartVO> cartList() {
		return dao.cartList((String)ss.getAttribute("loginId"));
	}
	
	public int sumProductPrice(ArrayList<HashMap<String, Object>> cartProductList) {
		int sum = 0;
		for (int i = 0; i < cartProductList.size(); i++) {
			sum += Integer.parseInt(String.valueOf(cartProductList.get(i).get("PRODUCTPRICE")));
		}
		return sum;
	}
	
	public ArrayList<HashMap<String, Object>> cartProductList() {
		return dao.cartProductList((String)ss.getAttribute("loginId"));
	}
	
	public void deleteCart(List<String> cartCodeList) {
		List<CartVO> CodeList = new ArrayList<CartVO>();
		for (int i = 0; i < cartCodeList.size(); i++) {
			CartVO cart = new CartVO();
			cart.setCartCode(Integer.parseInt(String.valueOf(cartCodeList.get(i))));
			CodeList.add(cart);
		}
		dao.deleteCart(CodeList);
	}
	
	public void createOrder() {
		dao.createOrder((String)ss.getAttribute("loginId"));
	}
	
	public ArrayList<OrderVO> orderList() {
		return dao.orderList((String)ss.getAttribute("loginId"));
	}
	
	public void insertOrderDetailList(List<String> cartQuantityList, List<String> productCodeList, ArrayList<OrderVO> orderList) {
		
		List<OrderDetailVO> OrderDetailList = new ArrayList<OrderDetailVO>();
		for (int i = 0; i < cartQuantityList.size(); i++) {
			OrderDetailVO OrderDetail = new OrderDetailVO();
			OrderDetail.setOrderdetailQuantity(Integer.parseInt(String.valueOf(cartQuantityList.get(i))));
			OrderDetail.setProductCode(productCodeList.get(i));
			OrderDetail.setOrderCode(orderList.get(0).getOrderCode());
			OrderDetailList.add(OrderDetail);
		}
		dao.insertOrderDetailList(OrderDetailList);
	}
}
