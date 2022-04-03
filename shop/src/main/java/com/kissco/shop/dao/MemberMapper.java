package com.kissco.shop.dao;

import java.util.ArrayList;

import com.kissco.shop.vo.MemberVO;
import com.kissco.shop.vo.ProductVO;

public interface MemberMapper {
	
	public int join(MemberVO member);
	public MemberVO searchMember(String memberId);
	public int memberUpdate(MemberVO member);
	
	
}
