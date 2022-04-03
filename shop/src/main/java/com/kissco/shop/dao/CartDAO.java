package com.kissco.shop.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kissco.shop.vo.CartVO;
import com.kissco.shop.vo.OrderDetailVO;
import com.kissco.shop.vo.OrderVO;

@Repository
public class CartDAO {

	@Autowired
	private SqlSession ss;
	
	public int insertCart(CartVO cart) {
		int cnt = 0 ;
		try {
			CartMapper mapper = ss.getMapper(CartMapper.class);
			cnt = mapper.insertCart(cart);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	public ArrayList<CartVO> cartList(String memberId) {
		ArrayList<CartVO> cart = null;
		try {
			CartMapper mapper = ss.getMapper(CartMapper.class);
			cart = mapper.cartList(memberId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cart;
	}
	
	public ArrayList<HashMap<String, Object>> cartProductList(String memberId) {
		ArrayList<HashMap<String, Object>> mapList = null;
		try {
			CartMapper mapper = ss.getMapper(CartMapper.class);
			mapList = mapper.cartProductList(memberId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapList;
	}
	
	public void deleteCart(List<CartVO> cartCodeList) {
		try {
			CartMapper mapper = ss.getMapper(CartMapper.class);
			mapper.deleteCart(cartCodeList);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void createOrder(String memberId) {
		try {
			CartMapper mapper = ss.getMapper(CartMapper.class);
			mapper.createOrder(memberId);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<OrderVO> orderList(String memberId) {
		ArrayList<OrderVO> list = null;
		try {
			CartMapper mapper = ss.getMapper(CartMapper.class);
			list = mapper.orderList(memberId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public void insertOrderDetailList(List<OrderDetailVO> orderDetail) {
		try {
			CartMapper mapper = ss.getMapper(CartMapper.class);
			mapper.insertOrderDetailList(orderDetail);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
