package com.kissco.shop.vo;

import lombok.Data;

@Data
public class CartVO {

	private int cartCode;
	private String memberId;
	private String productCode;
	private int cartQuantity;
	private String cartRegdate;
}
