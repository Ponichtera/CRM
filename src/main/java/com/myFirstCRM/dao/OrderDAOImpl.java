package com.myFirstCRM.dao;

import com.myFirstCRM.entity.Orders;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class OrderDAOImpl implements  OrderDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Orders> getOrder() {
        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // create the query
        Query<Orders> query = currentSession.createQuery("from Orders", Orders.class);

        // execute query and get result list
        List<Orders> list = query.getResultList();

        return list;
    }

    @Override
    public void saveOrder(Orders orders) {
        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // save / update Orders
        currentSession.saveOrUpdate(orders);
    }

    @Override
    public Orders getOrder(int theId) {

        //get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // fetch orders
        Orders orders = currentSession.get(Orders.class, theId);

        return orders;
    }

    @Override
    public void deleteOrder(int theId) {
        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // delete Orders
        Query query = currentSession.createQuery("delete from Orders where id=:orderID");
        query.setParameter("orderID", theId);
        query.executeUpdate();
    }
}
