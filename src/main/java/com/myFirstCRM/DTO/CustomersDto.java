package com.myFirstCRM.DTO;

import com.myFirstCRM.entity.Customer;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class CustomersDto implements Serializable {
    private static final long serialVersionUID = 1L;
    private List<Customer> customers = new ArrayList<Customer>(0);

    public List<Customer> getCustomers() {return customers;}
    public void setCustomers(List<Customer> customers) {this.customers = customers;}
}