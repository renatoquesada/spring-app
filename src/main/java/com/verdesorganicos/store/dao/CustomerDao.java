package com.verdesorganicos.store.dao;

import com.verdesorganicos.store.model.Customer;

import java.util.List;

/**
 * Created by Le on 1/25/2016.
 */
public interface CustomerDao {

    void addCustomer(Customer customer);

    Customer getCustomerById(int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String username);

}