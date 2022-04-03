package com.kissco.shop.dao;

import java.util.ArrayList;
import java.util.List;

import com.kissco.shop.vo.ProductVO;

public interface ProductMapper {
	
	public int insertProduct(ProductVO product);
	public ArrayList<ProductVO> allProductList();
	public ProductVO OneProduct(String productCode);
	public int updateProduct(ProductVO product);
	// 상품 삭제 (다중 처리)
	public int deleteProduct(List<ProductVO> productCodeList2);
	// 여러개 상품을 조회 (다중 처리)
	public ArrayList<ProductVO> prouductCodeSearchList(List<ProductVO> productCodeList2);
	
	public ArrayList<ProductVO> category1();
	public ArrayList<ProductVO> category2();
	public ArrayList<ProductVO> category3();
	public ArrayList<ProductVO> category4();
	public ArrayList<ProductVO> category5();
	public ArrayList<ProductVO> category6();
}
