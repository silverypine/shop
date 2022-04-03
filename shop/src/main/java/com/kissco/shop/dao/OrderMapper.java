package com.kissco.shop.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.kissco.shop.vo.OrderVO;

public interface OrderMapper {
	public ArrayList<OrderVO> orderList(String memberId);
	public ArrayList<HashMap<String, Object>> opodJoinList(OrderVO order);
	public ArrayList<HashMap<String, Object>> adminOrderList();
	public ArrayList<HashMap<String, Object>> adminOrderDetail(int orderCode);
	public ArrayList<HashMap<String, Object>> paymentList();
	public ArrayList<HashMap<String, Object>> deliveryReadyList();
	public void paking(List<OrderVO> order);
}
