package com.kissco.shop.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kissco.shop.dao.ProductDAO;
import com.kissco.shop.vo.ProductVO;
import com.kissco.shop.util.FileService;

@Service
public class ProductService {

	@Autowired
	private ProductDAO dao;
	@Autowired
	private HttpSession ss;
	
	private static final String uploadPath = "/productUpload";
	
	public String insertProduct(ProductVO product, MultipartFile upload) {
		
		String path = "";
		
		if (!upload.isEmpty()) {
			String originalFileName = upload.getOriginalFilename();
			String savedFileName = FileService.saveFile(upload, uploadPath);
			product.setProductOriginalfilename(originalFileName);
			product.setProductSavedfilename(savedFileName);
		}
		
		int cnt = dao.insertProduct(product);
		if (cnt > 0) {
			path = "redirect:/product/listForm";
		} else {
			path = "redirect:/product/insertForm";
		}
		return path;
	}
	
	public ArrayList<ProductVO> allProductList() {
		return dao.allProductList();
	}
	
	public ProductVO OneProduct(String productCode) {
		return dao.OneProduct(productCode);
	}
	
	public String updateProduct(ProductVO product, MultipartFile upload) {
		
		String path = "";
		ProductVO result = dao.OneProduct(product.getProductCode());
		String savedFile = result.getProductSavedfilename();
		System.out.println(result.getProductSavedfilename());
		
		if(!upload.isEmpty()) {
			if(savedFile != null) {
				boolean check = FileService.deleteFile(uploadPath+"/"+savedFile);
				System.out.println(check);
			}
			String originalFileName = upload.getOriginalFilename();
			String savedFileName = FileService.saveFile(upload, uploadPath);
			
			product.setProductOriginalfilename(originalFileName);
			product.setProductSavedfilename(savedFileName);
		}
		
		//글 수정
		int cnt = dao.updateProduct(product);
		
		if(cnt > 0) {
			path = "redirect:/product/listForm";
		} else {
			path = "redirect:/product/updateForm?productCode="+product.getProductCode();
		}
		return path;
	}
}
