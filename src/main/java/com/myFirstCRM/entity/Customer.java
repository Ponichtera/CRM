package com.myFirstCRM.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customer")
public class Customer {

	// ----------------------------------------------------------------------------------------------fields
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="first_name")
	private String firstName;
	
	@Column(name="last_name")
	private String lastName;
	
	@Column(name="email")
	private String email;

	@Column(name="phone")
	private String phone;

	@Column(name="address_street")
	private String addressStreet;

	@Column(name="address_postal")
	private String addressPostal;

	@Column(name="address_city")
	private String addressCity;

	@Column(name="address_country")
	private String addressCountry;


	// ----------------------------------------------------------------------------------------------constructor
	public Customer() {}
	// ----------------------------------------------------------------------------------------------methods
	public String getFullAdress() {
		return addressStreet + ", " + addressPostal + ", " + addressCity + ", " + addressCountry;
	}
	// ----------------------------------------------------------------------------------------------getters and setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddressStreet() {
		return addressStreet;
	}

	public void setAddressStreet(String addressStreet) {
		this.addressStreet = addressStreet;
	}

	public String getAddressPostal() {
		return addressPostal;
	}

	public void setAddressPostal(String addressPostal) {
		this.addressPostal = addressPostal;
	}

	public String getAddressCity() {
		return addressCity;
	}

	public void setAddressCity(String addressCity) {
		this.addressCity = addressCity;
	}

	public String getAddressCountry() {
		return addressCountry;
	}

	public void setAddressCountry(String addressCountry) {
		this.addressCountry = addressCountry;
}
	// ----------------------------------------------------------------------------------------------to string

	@Override
	public String toString() {
		return firstName +" "+ lastName;
	}
}





