package com.gul.dto;

import java.util.List;

import com.gul.modal.Product;

import lombok.Data;

@Data
public class CategoryDTO {

	Long id;
	String categoryName;
	List<Product> listProduct;
}
