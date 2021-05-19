package com.buihoanggia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.buihoanggia.entity.Customer;
import com.buihoanggia.service.CustomerService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@RequestMapping("danhsach")
@Controller
public class DanhSachConTroller {
	@Autowired
	CustomerService customerService;
	@GetMapping
public String Default(Model themodel) {
		List<Customer> listCustomers = customerService.LayDanhSachCustomer();
		int id = listCustomers.size();
		themodel.addAttribute("soluong",id);
		themodel.addAttribute("customer",listCustomers);
	return "/danhsach";
}
 @GetMapping("/laydanhsachgioitinh")
 @ResponseBody
 public String LayDanhSachGioiTinh(@RequestParam String gioitinh) throws JsonProcessingException {
	 List<Customer> listCustomers = customerService.LayDanhSachCustomerGioTinh(gioitinh);
	 ObjectMapper map = new ObjectMapper();
	 String List = map.writeValueAsString(listCustomers);
	 System.out.println(List);
	 return List;
	 
 }
}
