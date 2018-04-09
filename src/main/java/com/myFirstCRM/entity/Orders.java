package com.myFirstCRM.entity;


import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="orders")
public class Orders {

    // ----------------------------------------------------------------------------------------------constructor
    public Orders() {
    }

    // ----------------------------------------------------------------------------------------------fields
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @ManyToMany(fetch= FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
    @JoinTable(name="order_details",
            joinColumns = @JoinColumn(name="orderID"),
            inverseJoinColumns = @JoinColumn(name="productID"))
    private List<Product> products;

    @ManyToOne
    @JoinColumn(name="customerID")
    private Customer customer;


    @OneToMany(mappedBy = "order", fetch=FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
    private List<Details> details;

    public int totalPrice() {
        int total =0;
        for(Product product:products)
            total += product.getPrice();
        return total;
    }

//    private int totalPrice;
//    private Orders.Status status;


    // ----------------------------------------------------------------------------------------------getters setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public List<Details> getDetails() {
        return details;
    }
    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public void setDetails(List<Details> details) {
        this.details = details;
    }


    // ----------------------------------------------------------------------------------------------to string
    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
//                ", customer=" + customer +
//                ", details=" + details +
//                ", totalPrice=" + totalPrice +
//                ", status=" + status +
                '}';
    }


    private enum Status {
        Cancelled,
        Delivered,
        Sent,
        PaymentDue,
        Problem,
        Processing,
        Returned,
        Completed
    }
}
