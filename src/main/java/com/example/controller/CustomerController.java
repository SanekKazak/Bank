package com.example.controller;

import com.example.model.Customer;
import com.example.repository.CustomerRepository;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;

@RestController
public class CustomerController {

    @Autowired
    private CustomerRepository customerRepository;

    @GetMapping("/bank")
    public String getBankInfo() {
        return "Welcome to the Bank application!";
    }
    @PostMapping("/bank")
    public void addCustomer(@RequestBody Customer customer) {
        customerRepository.save(customer);
    }
}