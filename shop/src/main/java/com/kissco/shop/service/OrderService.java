package com.kissco.shop.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kissco.shop.dao.OrderDAO;
import com.kissco.shop.util.FileService;
import com.kissco.shop.vo.CartVO;
import com.kissco.shop.vo.OrderVO;
import com.kissco.shop.vo.ProductVO;

@Service
public class OrderService {

	@Autowired
	private OrderDAO dao;
	@Autowired
	private HttpSession ss;
	
	public ArrayList<HashMap<String, Object>> adminOrderList() {
		return dao.adminOrderList();
	}
	
	public ArrayList<HashMap<String, Object>> adminOrderDetail(int orderCode) {
		return dao.adminOrderDetail(orderCode);
	}
	
	public ArrayList<HashMap<String, Object>> paymentList() {
		return dao.paymentList();
	}
	
	public ArrayList<HashMap<String, Object>> deliveryReadyList() {
		return dao.deliveryReadyList();
	}
	
	public void paking(List<String> orderCodeList) {
		List<OrderVO> orderList = new ArrayList<OrderVO>();
		for (int i = 0; i < orderCodeList.size(); i++) {
			OrderVO order = new OrderVO();
			order.setOrderCode(Integer.parseInt(String.valueOf(orderCodeList.get(i))));
			orderList.add(order);
		}
		dao.paking(orderList);
	}
	
}
