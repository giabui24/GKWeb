package com.buihoanggia.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.buihoanggia.entity.Customer;
import com.buihoanggia.service.CustomerService;

@RequestMapping("chitiet")
@Controller
public class ChiTietController {
	@Autowired
	CustomerService customerSevice;
	
	@GetMapping("{id}")
	public String Default(@PathVariable int id,ModelMap modelMap) {
	Customer customer=	customerSevice.Layustomertheoma(id);
	modelMap.addAttribute("customer", customer);
		return "/chitiet";
		
	}

}
