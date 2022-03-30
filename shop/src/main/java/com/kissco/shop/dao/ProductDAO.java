package com.kissco.shop.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kissco.shop.vo.ProductVO;

@Repository
public class ProductDAO {

	@Autowired
	private SqlSession ss;
	
	public int insertProduct(ProductVO product) {
		
		int cnt = 0;
		try {
			ProductMapper mapper = ss.getMapper(ProductMapper.class);
			cnt = mapper.insertProduct(product);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	public ArrayList<ProductVO> allProductList() {
		
		ArrayList<ProductVO> list = null;
		try {
			ProductMapper mapper = ss.getMapper(ProductMapper.class);
			list = mapper.allProductList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ProductVO OneProduct(String productCode) {
		
		ProductVO product = null;
		try {
			ProductMapper mapper = ss.getMapper(ProductMapper.class);
			product = mapper.OneProduct(productCode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return product;
	}
	
	public int updateProduct(ProductVO product) {
		
		int cnt = 0;
		try {
			ProductMapper mapper = ss.getMapper(ProductMapper.class);
			cnt = mapper.updateProduct(product);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
}
