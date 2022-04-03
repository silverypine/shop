package com.kissco.shop.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.kissco.shop.vo.OrderVO;

public interface OrderMapper {
	public ArrayList<OrderVO> orderList(String memberId);
	public ArrayList<HashMap<String, Object>> opodJoinList(OrderVO order);
}
