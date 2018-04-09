package com.myFirstCRM.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="product")
public class Product {

    // ----------------------------------------------------------------------------------------------fields
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @Column(name="name")
    private String name;

    @Column(name="price")
    private int price;

    @Column(name="quantity")
    private int quantity;

    @ManyToMany(fetch=FetchType.LAZY, cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
    @JoinTable(name="order_details",
            joinColumns = @JoinColumn(name="productID"),
            inverseJoinColumns = @JoinColumn(name="orderID"))
    private List<Orders> orders;


    // ----------------------------------------------------------------------------------------------constructor
    public Product() {
    }

    // ----------------------------------------------------------------------------------------------getters setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    // ----------------------------------------------------------------------------------------------to String
    @Override
    public String toString() {
        return "" + name + " $" + price;
    }
}
