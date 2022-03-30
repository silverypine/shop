package com.kissco.shop.dao;

import com.kissco.shop.vo.AdminVO;

public interface AdminMapper {
	public int join(AdminVO admin);
	public AdminVO searchAdmin(String adminId);
}
