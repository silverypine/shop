package com.kissco.shop.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kissco.shop.service.ProductService;
import com.kissco.shop.vo.ProductVO;

@Controller
public class ProductController {

	@Autowired
	private ProductService sv;
	
	@RequestMapping(value = "/product/insertForm", method = RequestMethod.GET)
	public String insertForm() {
		return "product/insertForm";
	}
	
	@RequestMapping(value = "/product/listForm", method = RequestMethod.GET)
	public String listForm(Model model) {
		ArrayList<ProductVO> list = sv.allProductList();
		model.addAttribute("list", list);
		return "product/listForm";
	}
	
	@RequestMapping(value = "/product/infoForm", method = RequestMethod.GET)
	public String infoForm(Model model, String productCode) {
		ProductVO product = sv.OneProduct(productCode);
		model.addAttribute("product", product);
		return "product/infoForm";
	}
	
	@RequestMapping(value = "/product/insert", method = RequestMethod.POST)
	public String insertProduct(ProductVO product, MultipartFile upload) {
		return sv.insertProduct(product, upload);
	}
	
	@RequestMapping(value = "/product/loadImage", method = RequestMethod.GET)
	public String loadImage(String fileName, HttpServletResponse response) throws IOException {
		response.setContentType("image/jpg");
	    ServletOutputStream bout = response.getOutputStream();
		String imagePath = "C:/productUpload/" + fileName;
		FileInputStream f = new FileInputStream(imagePath);
		int length;
		byte[] buffer = new byte[10];
		while((length=f.read(buffer)) != -1){
			bout.write(buffer,0,length);
		}
		return null;
	}
	
	@RequestMapping(value = "/product/updateForm", method = RequestMethod.GET)
	public String updateForm(String productCode, Model model) {
		ProductVO product = sv.OneProduct(productCode);
		model.addAttribute("p", product);
		return "product/updateForm";
	}
	
	@RequestMapping(value = "/product/update", method = RequestMethod.POST)
	public String update(ProductVO product, MultipartFile upload) {
		return sv.updateProduct(product, upload);
	}
	
	// 상품 삭제 (다중 처리)
	@ResponseBody
	@RequestMapping(value = "/product/delete", method = RequestMethod.GET)
	public boolean delete(@RequestParam(value = "productCodeList[]", defaultValue = "") List<String> productCodeList) {
		if (productCodeList.isEmpty()) {
			return false;
		} else {
			sv.deleteProduct(productCodeList);
			return true;
		}
	}
}
