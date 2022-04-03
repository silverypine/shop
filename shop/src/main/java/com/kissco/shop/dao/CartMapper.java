package com.kissco.shop.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.kissco.shop.vo.CartVO;
import com.kissco.shop.vo.OrderDetailVO;
import com.kissco.shop.vo.OrderVO;

public interface CartMapper {
	
	public int insertCart(CartVO cart);
	public ArrayList<CartVO> cartList(String memberId);
	public ArrayList<HashMap<String, Object>> cartProductList(String memberId);
	public void deleteCart(List<CartVO> cartCodeList);
	public void createOrder(String memberId);
	public ArrayList<OrderVO> orderList(String memberId);
	public void insertOrderDetailList(List<OrderDetailVO> orderDetail);
}
