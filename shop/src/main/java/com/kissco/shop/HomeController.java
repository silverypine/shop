package com.kissco.shop;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kissco.shop.service.ProductService;
import com.kissco.shop.vo.ProductVO;

@Controller
public class HomeController {
	
	//메인페이지(상품목록)
	@Autowired
	private ProductService sv;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		//상품리스트 보이기
		ArrayList<ProductVO> list = sv.allProductList();
		model.addAttribute("list", list);
		
		return "home";
	}
	
}
