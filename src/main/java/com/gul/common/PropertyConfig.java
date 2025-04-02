package com.gul.common;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
//@Configuration
//@Service
@PropertySource(value = "classpath:config.properties")
public class PropertyConfig {

	@Value("${image.baseUrl}")
	String baseUrl;

//	String hostName;
//
//	String sendFrom;

//	String sendFromName;

//	String sendFromPassword;

//	String smtpPort;
	@Value("${image.fileServerLocation}")
	String fileServerLocation;
	@Value("${image.fileServerWebUrl}")
	String fileServerWebUrl;
	
	@Value("${image.otpHtmlLcation}")
	String otpHtmlLcation;
	
	@Value("${image.requirementProductHtmlLocation}")
	String requirementProductHtmlLocation;

}
