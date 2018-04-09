package com.myFirstCRM.controller;

import com.myFirstCRM.entity.Product;
import com.myFirstCRM.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

	// need to inject our service
	@Autowired
	private ProductService productService;

	@GetMapping("/list")
	public String listProducts(Model theModel) {
		
		// get orders from the service
		List<Product> products = productService.getProduct();
				
		// add the orders to the model
		theModel.addAttribute("products", products);
		
		return "list-products";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {

		// create model attribute to bind form data
		Product product = new Product();

		theModel.addAttribute("product", product);

		return "form-product";
	}

	@PostMapping("/saveProduct")
	public String saveProduct(@ModelAttribute("product") Product product) {

		// save the customer using our service
		productService.saveProduct(product);

		return "redirect:/product/list";
	}

	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("productId") int theId,
									Model theModel) {

		// get the customer from our service
		Product product = productService.getProduct(theId);

		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("product", product);

		// send over to our form
		return "form-product";
	}

	@GetMapping("/delete")
	public String deleteProduct(@RequestParam("productId") int theId) {

		// delete the customer
		productService.deleteProduct(theId);

		return "redirect:/product/list";
	}
}










