package com.kissco.shop.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

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
		
		if(!upload.isEmpty()) {
			if(savedFile != null) {
				FileService.deleteFile(uploadPath+"/"+savedFile);
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
	
	// 상품 삭제(다중 처리)
	public void deleteProduct(List<String> productCodeList) {
		
		// List<String>로 가져와서 List<ProductVO>에 담는 과정
		List<ProductVO> productCodeList2 = new ArrayList<ProductVO>();
		for (int i = 0; i < productCodeList.size(); i++) {
			ProductVO product = new ProductVO();
			product.setProductCode(productCodeList.get(i));
			productCodeList2.add(product);
		}
		
		// 상품코드만을 포함한 리스트를 보내서 삭제할 상품들을 조회
		ArrayList<ProductVO> resultList = dao.prouductCodeSearchList(productCodeList2);
		
		// 첨부파일을 삭제하기 위해 실제 파일명 리스트 생성후 파일명 추가
		ArrayList<String> savedFileList = new ArrayList<String>();
		for (int i = 0; i < resultList.size(); i++) {
			savedFileList.add(resultList.get(i).getProductSavedfilename());
		}
		
		// DB에서 상품 리스트 삭제
		dao.deleteProduct(productCodeList2);
		
		// 로컬에서 첨부파일(이미지)들 삭제
		for (int i = 0; i < resultList.size(); i++) {
			FileService.deleteFile(uploadPath+"/"+savedFileList.get(i));
		}
		
	}
}
