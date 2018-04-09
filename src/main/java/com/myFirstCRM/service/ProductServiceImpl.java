package com.myFirstCRM.service;

import com.myFirstCRM.dao.ProductDAO;
import com.myFirstCRM.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDAO productDAO;


    @Override
    @Transactional
    public List<Product> getProduct() {
        return productDAO.getProduct();
    }

    @Override
    @Transactional
    public void saveProduct(Product product) {
        productDAO.saveProduct(product);
    }

    @Override
    @Transactional
    public Product getProduct(int theId) {
        return productDAO.getProduct(theId);
    }

    @Override
    @Transactional
    public void deleteProduct(int theId) {
        productDAO.deleteProduct(theId);
    }
}
