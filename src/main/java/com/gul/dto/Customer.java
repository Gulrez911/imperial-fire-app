
package com.gul.dto;

import java.util.List;

import lombok.Data;

@Data
public class Customer {

	private Long customerId;
	private String name;

	private List<Order> orders;

}
