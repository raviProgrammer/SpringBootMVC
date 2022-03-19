package com.ravi.controller;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.ravi.model.Product;

@Controller
public class ShowHomeController {
	@GetMapping("/")
	public String ShowHomePage() {
		return "welcome";
	}
	@GetMapping("/report")
	public String showReportData(Map<String,Object>map) {
		map.put("name","Ravi Prasad");
		map.put("age",24);
		map.put("adds","Patna");
		map.put("email", "ravi@gmail.com");
		return "show_report";
	}
	@GetMapping("/report1")
	public String showReportData1(Map<String,Object>map){
		map.put("favcolors", new String[] {"Grren","Red","Blue","Black","White"});
		map.put("nicknames",List.of("Samanvya","Prashant","Harshita","Rashmi"));
		map.put("phonenumbers", Set.of(9999999l,8888888l,6666666l,1234567l,9876543l));
		map.put("idDeatils", Map.of("aadhar","45463L","voterId","43253LP","panNo","453HP234"));
		return "show_report1";
	}
	@GetMapping("/report2")
	public String showReportData2(Map<String,Object>map){
		Product prod=new Product(101,"Sofa",1520.0,10);
		map.put("prodData", prod);
		return "show_report2";
	}
	@GetMapping("/report3")
	public String showReportData3(Map<String,Object>map){
		List<Product> list=List.of(new Product(102,"Chair",98765.0,7));
		map.put("prodList", list);
		return "show_report3";
	}
}
