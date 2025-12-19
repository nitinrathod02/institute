package com.cjc.springcrudapp.app.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.springcrudapp.app.model.Institute;
import com.cjc.springcrudapp.app.service.InstituteServiceI;

@Controller
public class InstituteController {
	
	@Autowired
	InstituteServiceI instituteservicei;
	
	@RequestMapping("/")
	public String preLogin() {
		
		return"login";
	}
	
	@RequestMapping("/register")
	public String preRegister() {
		
		return"register";
	}
	
	@RequestMapping("/save")
	public String saveInfo(@ModelAttribute Institute institute) {
		
		instituteservicei.saveInfo(institute);
		
		return"login";
	}
	
	@RequestMapping("/login")
	public String loginInstitute(@RequestParam("username")String username,
			@RequestParam("password")String password,Model m) {
		
	    List<Institute> list=instituteservicei.getAllData(username, password);
	    if(!list.isEmpty()) {
	    	
	    	m.addAttribute("data", list);
	    	return"success";
	    }
		
		return "login";
	}
	
	@RequestMapping("/delete")
	public String deleteInfo(@RequestParam("id")int id,Model m) {
		
		List<Institute> list=instituteservicei.delteById(id);
		m.addAttribute("data", list);
		
		return"success";
	}
	
	@RequestMapping("/edit")
	public String editData(@RequestParam("id")int id,Model m) {
		
		Institute it=instituteservicei.getSingle(id);
		m.addAttribute("ed", it);
		
		return"edit";
	}
	
	@RequestMapping("/update")
	public String updatedData(@ModelAttribute Institute institute) {
		
		instituteservicei.saveUpdatedData(institute);
		
		return"login";
		
	}
	
	
	

}
