package com.demo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.demo.pojo.Customer;
import com.demo.service.CustomerService;

@Controller
public class HomeController {

	@Autowired
	private CustomerService customerService;

	@GetMapping("/")
	public String hello(Model m) {
		List<Customer> customer=customerService.getAllCustomer();
		m.addAttribute("customer",customer);
		return "index";
	}

	@GetMapping("/addCustomer")
	public String addCusto() {
		return "addCustomer";
	}

	@PostMapping("/register")
	public String customerRegister(@ModelAttribute Customer e,HttpSession session) {
		System.out.println(e);

		customerService.addCustomer(e);
			session.setAttribute("msg", "Customer Added Successfull");

		return "redirect:/";

	}

	@GetMapping("/edit/{id}")
	public String edit(@PathVariable int id,Model m) {
		Customer customer=customerService.getCustomerById(id);
		m.addAttribute("customer", customer);
		return "edit";
	}

	@PostMapping("/update")
	public String updateCustomer(@ModelAttribute Customer customer,HttpSession session) {
		customerService.addCustomer(customer);
		System.out.println(customer);
		session.setAttribute("msg", "Employee Data Updated Successfully");
		return "redirect:/";

	}

	@GetMapping("/delete/{id}")
	public String deleteCustomer(@PathVariable int id,HttpSession session) {

		System.out.println("Deleted Id = "+id );
		customerService.deleteCustomer(id);
		session.setAttribute("msg", "Customer Data is Deleted");
		return "redirect:/";
	}

}
