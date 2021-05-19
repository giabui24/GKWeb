package com.buihoanggia.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buihoanggia.dao.CustomerDao;
import com.buihoanggia.entity.Customer;

@Service
public class CustomerService {
@Autowired
CustomerDao customerDao;
public int ThemCustomer(Customer customer) {
	return customerDao.ThemCustomer(customer);
}
public List<Customer>  LayDanhSachCustomer(){
	return customerDao.LayDanhSachCustomer();
}
public Customer  Layustomertheoma(int id){
	return customerDao.Layustomertheoma(id);
	
}
public List<Customer>  LayDanhSachCustomerGioTinh(String gioitinh){
	return customerDao.LayDanhSachCustomerGioTinh(gioitinh);
}
@Transactional
public boolean isEmailExit(String email) {
	return customerDao.isEmailExit(email);
}
}
	

