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
	
	@RequestMapping(value = "/category1", method = RequestMethod.GET)
	public String category1(Model model) {
		ArrayList<ProductVO> list = sv.category1();
		model.addAttribute("list", list);
		return "category1";
	}
	
	@RequestMapping(value = "/category2", method = RequestMethod.GET)
	public String category2(Model model) {
		ArrayList<ProductVO> list = sv.category2();
		model.addAttribute("list", list);
		return "category2";
	}
	
	@RequestMapping(value = "/category3", method = RequestMethod.GET)
	public String category3(Model model) {
		ArrayList<ProductVO> list = sv.category3();
		model.addAttribute("list", list);
		return "category3";
	}
	
	@RequestMapping(value = "/category4", method = RequestMethod.GET)
	public String category4(Model model) {
		ArrayList<ProductVO> list = sv.category4();
		model.addAttribute("list", list);
		return "category4";
	}
	
	@RequestMapping(value = "/category5", method = RequestMethod.GET)
	public String category5(Model model) {
		ArrayList<ProductVO> list = sv.category5();
		model.addAttribute("list", list);
		return "category5";
	}
	
	@RequestMapping(value = "/category6", method = RequestMethod.GET)
	public String category6(Model model) {
		ArrayList<ProductVO> list = sv.category6();
		model.addAttribute("list", list);
		return "category6";
	}
}
