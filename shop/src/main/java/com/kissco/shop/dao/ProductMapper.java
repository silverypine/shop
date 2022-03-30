package com.kissco.shop.dao;

import java.util.ArrayList;

import com.kissco.shop.vo.ProductVO;

public interface ProductMapper {
	
	public int insertProduct(ProductVO product);
	public ArrayList<ProductVO> allProductList();
	public ProductVO OneProduct(String productCode);
	public int updateProduct(ProductVO product);
}
