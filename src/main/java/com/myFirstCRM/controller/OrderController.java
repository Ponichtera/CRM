package com.myFirstCRM.controller;

import com.myFirstCRM.DTO.CustomersDto;
import com.myFirstCRM.entity.Orders;
import com.myFirstCRM.service.CustomerService;
import com.myFirstCRM.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/orders")
public class OrderController {

	// need to inject our customer service

	@Autowired
	private OrderService orderService;
	@Autowired
	private CustomerService customerService;

	@GetMapping("/list")
	public String listOrder(Model theModel) {
		
		// get orders from the service
		List<Orders> orders = orderService.getOrder();
				
		// add the customers to the model
		theModel.addAttribute("orders", orders);
		
		return "list-order";
//		return "main";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(@ModelAttribute CustomersDto customersDto, BindingResult result, ModelMap modelMap, HttpServletRequest request) {
			modelMap.addAttribute("customersDto", customersDto);
			// Manage available data
			modelMap.addAttribute("customersAvailable", customerService.getCustomers());

		return "form-order";
	}
	
	@PostMapping("/saveOrder")
	public String saveOrder(@ModelAttribute("order") Orders order) {
		
		// save the customer using our service
		orderService.saveOrder(order);
		
		return "redirect:/orders/list";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("orderID") int theId,
									Model theModel) {
		
		// get the customer from our service
		Orders order = orderService.getOrder(theId);
		
		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("order", order);
		
		// send over to our form		
		return "form-order";
	}
	
	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("orderId") int theId) {
		
		// delete the customer
		orderService.deleteOrder(theId);
		
		return "redirect:/orders/list";
	}
}










