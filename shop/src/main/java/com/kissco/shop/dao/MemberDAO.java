package com.kissco.shop.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kissco.shop.vo.MemberVO;
import com.kissco.shop.vo.OrderVO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSession ss;
	
	public int join(MemberVO member) {
		int cnt = 0;
		try {
			MemberMapper mapper = ss.getMapper(MemberMapper.class);
			cnt = mapper.join(member);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
	public MemberVO searchMember(String memberId) {
		MemberVO member = null;
		try {
			MemberMapper mapper = ss.getMapper(MemberMapper.class);
			member = mapper.searchMember(memberId);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return member;
	}
	
	//회원정보 업데이트
	public int memberUpdate(MemberVO member) {
		int cnt = 0;
		try {
			MemberMapper mapper = ss.getMapper(MemberMapper.class);
			cnt = mapper.memberUpdate(member);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	public ArrayList<OrderVO> orderList(String memberId) {
		ArrayList<OrderVO> list = null;
		try {
			OrderMapper mapper = ss.getMapper(OrderMapper.class);
			list = mapper.orderList(memberId);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<HashMap<String, Object>> opodJoinList(OrderVO order) {
		ArrayList<HashMap<String, Object>> list = null;
		try {
			OrderMapper mapper = ss.getMapper(OrderMapper.class);
			list = mapper.opodJoinList(order);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
