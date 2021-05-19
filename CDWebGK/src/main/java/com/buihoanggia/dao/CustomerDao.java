package com.buihoanggia.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.buihoanggia.entity.Customer;



@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CustomerDao {
	
@Autowired
SessionFactory sessionFactory;

	@Transactional
	public int ThemCustomer(Customer customer) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		int id = (int) session.save(customer);
		if (0<id) {
			return id;
		}else {
			return 0;
		}
	
	}
	@Transactional
	public List<Customer>  LayDanhSachCustomer(){
		Session session = sessionFactory.getCurrentSession();
		String sql = "From CUSTOMER ";
		List<Customer> listCustomers =(List<Customer>) session.createQuery(sql).getResultList();
		return listCustomers;
		
	}
	@Transactional
	public Customer  Layustomertheoma(int id){
		Session session = sessionFactory.getCurrentSession();
		String sql = "From CUSTOMER ct Where ct.customerid = "+id;
		Customer customer =(Customer) session.createQuery(sql).getSingleResult();
		return customer;
		
	}
	@Transactional
	public List<Customer>  LayDanhSachCustomerGioTinh(String gioitinh){
		Session session = sessionFactory.getCurrentSession();
		String sql = "From CUSTOMER ct Where ct.gioitinh = "+ "'"+ gioitinh +"'";
		List<Customer> listCustomers =(List<Customer>) session.createQuery(sql).getResultList();
		return listCustomers;
		
	}
	@Transactional
	public boolean isEmailExit(String email) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "From CUSTOMER ct Where ct.gioitinh = "+ "'"+ email +"'";
		List<Customer> listCustomers = (List<Customer>) session.createQuery(sql).getResultList();
		if (listCustomers.size() ==0) {
			return true;
		}
		return false;
	}
}
