package com.myFirstCRM.entity;

import javax.persistence.*;

@Entity
@Table(name="order_details")
public class Details {


    // --------------------------------------------------------constructor
    public Details() {
    }

    // --------------------------------------------------------fields
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @ManyToOne
    @JoinColumn(name="orderID")
    private Orders order;




    // -----------------------------------------------------setters and getters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Orders getOrder() {
        return order;
    }

    public void setOrder(Orders order) {
        this.order = order;
    }

    //-------------------------------------------------------to string

    @Override
    public String toString() {
        return "Details{" +
                "id=" + id +
                ", order=" + order +
                ", products=" +
                '}';
    }
}

