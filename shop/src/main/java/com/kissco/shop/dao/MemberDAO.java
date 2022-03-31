package com.kissco.shop.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kissco.shop.vo.MemberVO;

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
}
