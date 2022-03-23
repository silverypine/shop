package com.kissco.shop.vo;

import lombok.Data;

@Data
public class ProductVO {

	private String productCode;
	private String productCategory;
	private String productName;
	private int productPrice;
	private int productStock;
	private String productOriginalfilename;
	private String productSavedfilename;
	private String productRegdate;
	private String productContent;
}
