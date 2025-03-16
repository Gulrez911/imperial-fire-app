package com.gul.modal;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class OtpAuth {
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	private Long id;
	String userEmail;
	String otp;
}
