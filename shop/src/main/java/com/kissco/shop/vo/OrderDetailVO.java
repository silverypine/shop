package com.kissco.shop.vo;

import lombok.Data;

@Data
public class OrderDetailVO {

	private int orderdetailCode;
	private int orderCode;
	private String productCode;
	private int orderdetailQuantity;
}
