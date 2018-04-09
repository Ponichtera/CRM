package com.myFirstCRM.controller;

import com.myFirstCRM.entity.Customer;
import com.myFirstCRM.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/home")
public class HomeController {
	
	@GetMapping("/")
	public String loadMain() {
		return "main";
	}
}










