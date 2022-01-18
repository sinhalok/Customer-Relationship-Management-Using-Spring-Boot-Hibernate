package com.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.demo.pojo.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer,Integer> {

}
