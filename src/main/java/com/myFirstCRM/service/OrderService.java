package com.myFirstCRM.service;

import com.myFirstCRM.entity.Orders;

import java.util.List;

public interface OrderService {

	public List<Orders> getOrder();

	public void saveOrder(Orders orders);

	public Orders getOrder(int theId);

	public void deleteOrder(int theId);
	
}
