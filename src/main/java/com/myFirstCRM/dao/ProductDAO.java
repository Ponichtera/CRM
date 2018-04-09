package com.myFirstCRM.dao;

import com.myFirstCRM.entity.Product;

import java.util.List;

public interface ProductDAO {

	public List<Product> getProduct();

	public void saveProduct(Product product);

	public Product getProduct(int theId);

	public void deleteProduct(int theId);
	
}
