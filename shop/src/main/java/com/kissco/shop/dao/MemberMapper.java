package com.kissco.shop.dao;

import com.kissco.shop.vo.MemberVO;

public interface MemberMapper {
	
	public int join(MemberVO member);
	public MemberVO searchMember(String memberId);
	public int memberUpdate(MemberVO member);
}
