package com.myFirstCRM.service;

import com.myFirstCRM.dao.OrderDAO;
import com.myFirstCRM.entity.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDAO orderDAO;


    @Override
    @Transactional
    public List<Orders> getOrder() {
        return orderDAO.getOrder();
    }

    @Override
    @Transactional
    public void saveOrder(Orders orders) {
        orderDAO.saveOrder(orders);
    }

    @Override
    @Transactional
    public Orders getOrder(int theId) {
        return orderDAO.getOrder(theId);
    }

    @Override
    @Transactional
    public void deleteOrder(int theId) {
        orderDAO.deleteOrder(theId);
    }
}
