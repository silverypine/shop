package com.kissco.shop.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kissco.shop.vo.OrderVO;

@Repository
public class OrderDAO {

	@Autowired
	private SqlSession ss;
	
	public ArrayList<HashMap<String, Object>> adminOrderList() {
		ArrayList<HashMap<String, Object>> list = null;
		try {
			OrderMapper mapper = ss.getMapper(OrderMapper.class);
			list = mapper.adminOrderList(); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<HashMap<String, Object>> adminOrderDetail(int orderCode) {
		ArrayList<HashMap<String, Object>> list = null;
		try {
			OrderMapper mapper = ss.getMapper(OrderMapper.class);
			list = mapper.adminOrderDetail(orderCode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<HashMap<String, Object>> paymentList() {
		ArrayList<HashMap<String, Object>> list = null;
		try {
			OrderMapper mapper = ss.getMapper(OrderMapper.class);
			list = mapper.paymentList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<HashMap<String, Object>> deliveryReadyList() {
		ArrayList<HashMap<String, Object>> list = null;
		try {
			OrderMapper mapper = ss.getMapper(OrderMapper.class);
			list = mapper.deliveryReadyList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public void paking(List<OrderVO> order) {
		try {
			OrderMapper mapper = ss.getMapper(OrderMapper.class);
			mapper.paking(order);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
