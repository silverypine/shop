package com.kissco.shop.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kissco.shop.vo.AdminVO;

@Repository
public class AdminDAO {

	@Autowired
	private SqlSession ss;
	
	public int join(AdminVO admin) {
		int cnt = 0;
		try {
			AdminMapper mapper = ss.getMapper(AdminMapper.class);
			cnt = mapper.join(admin);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	public AdminVO searchAdmin(String adminId) {
		AdminVO admin = null;
		try {
			AdminMapper mapper = ss.getMapper(AdminMapper.class);
			admin = mapper.searchAdmin(adminId);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return admin;
	}
}
