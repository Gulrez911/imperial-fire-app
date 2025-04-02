package com.gul.modal;

import java.util.Date;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Data;
import lombok.ToString;

@Entity
@Data
@ToString
public class Product {
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	private Long id;

	@Column(length = 128, nullable = false, unique = true)
	private String name;

	Date createDate;
	Date updateDate;
	@ManyToOne(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY)
	@JoinColumn(name = "category_id")
	private Category category;

//	new
	@Column(length = 2000)
	String imageUrl;

	String imageName;

//	Details
	String material;
	String color;
	String warranty;
	String productUsage;
	String productType;
	String application;
//	next
	String minimumOrderQuantity;
	String price;
	String voltage;
	String paymentTerms;
	String supplyAbility;
	String deliveryTime;
	String mainDomesticMarket;

//	private Date date = new Date();

	public Product(Long id, String name, Category category) {

		this.id = id;
		this.name = name;
		this.category = category;
	}

	public Product(Long id, String name) {

		this.id = id;
		this.name = name;
	}

	public Product() {

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

}
