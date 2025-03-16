package com.gul.modal;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class RequirementPorduct {
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	private Long id;
	private String productName;
	private Long productId;
	String imageUrl;
	Integer quantity;
	@Column(length = 2000)
	String additionalDetail;
	String userEmail;
	Long phone;
	  

}
