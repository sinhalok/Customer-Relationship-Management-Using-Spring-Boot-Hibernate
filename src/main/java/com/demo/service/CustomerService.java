package com.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.pojo.Customer;
import com.demo.repository.CustomerRepository;

@Service	
public class CustomerService {
	
	@Autowired
	public CustomerRepository customerRepository;
	
	public void addCustomer(Customer customer) {
		customerRepository.save(customer);
	}
	
	public List<Customer> getAllCustomer(){
		return customerRepository.findAll();
	}
	
	public Customer getCustomerById(int id) {
		Optional<Customer> customer=customerRepository.findById(id); 
	if(customer.isPresent()) {
		return customer.get();
	}
	return null;
	
	}
	 
	
	public void deleteCustomer(int id) {
		System.out.println("Deleted Customer Id = "+id);
		customerRepository.deleteById(id);
	}
}
