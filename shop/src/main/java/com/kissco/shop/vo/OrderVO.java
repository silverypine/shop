package com.kissco.shop.vo;

import lombok.Data;

@Data
public class OrderVO {

	private int orderCode;
	private String memberId;
	private String productCode;
	private String orderIndate;
}
