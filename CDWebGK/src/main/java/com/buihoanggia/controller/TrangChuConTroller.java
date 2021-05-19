package com.buihoanggia.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.buihoanggia.entity.Customer;
import com.buihoanggia.service.CustomerService;

@Controller
@RequestMapping("/")
public class TrangChuConTroller {

	@Autowired
	CustomerService customerService;

	@GetMapping
	public String Default(Model themodel) {
		themodel.addAttribute("customer", new Customer());
		return "/trangchu";
	}

	@PostMapping("/processForm")
	public String processForm(@Valid @ModelAttribute("customer") Customer customer, BindingResult theBindingResult,Model theModel) {
		if (theBindingResult.hasErrors()) {
			if (customerService.isEmailExit(customer.getEmail())) {
				theModel.addAttribute("msg","Emaildatontai");
			}
			return "/trangchu";
		} else {
			if (null == customer.getGioitinh()) {
				customer.setGioitinh("Nam");
				customerService.ThemCustomer(customer);
			} else {
				customerService.ThemCustomer(customer);
			}

			return "/result";
		}

	}
}
