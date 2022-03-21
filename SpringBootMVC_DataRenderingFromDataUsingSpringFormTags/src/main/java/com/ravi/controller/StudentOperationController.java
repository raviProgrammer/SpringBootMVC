package com.ravi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ravi.model.Student;
@Controller
public class StudentOperationController {
	@GetMapping("/")
	public String showHomePage(){
		return "welcome";
	}
	@GetMapping("/register")
	public String showStudentFormPage(@ModelAttribute("stud")Student st) {
		st.setAvg(68.5f);
		return "student_register";
	}
	@PostMapping("/register")
	public String registerStudent(@ModelAttribute("stud")Student st) {
		
	return "show_result";	
	}
}
