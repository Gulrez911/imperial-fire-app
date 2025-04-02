package com.gul;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.gul.common.PropertyConfig;
import com.gul.service.MailService;
import com.gul.service.MailServiceImpl;

@SpringBootApplication
//@EnableScheduling
//@PropertySource("classpath:config.properties")
public class ImperialFireAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(ImperialFireAppApplication.class, args);
		System.out.println("sss");

	}

//	@Bean
//	PropertyConfig depClass() {
//		return new PropertyConfig();
//	}

//	@Bean
//	MailServiceImpl depClass2() {
//		return new MailServiceImpl();
//	}
//	@Bean
//	@ConditionalOnProperty(prefix = "my.property.prefix", name = "myProperty")
//	public PropertyConfig myBean() {
//		return new PropertyConfig();
//	}

//	@Bean
//	PropertyConfig config() {
//		PropertyConfig propertyConfig = new PropertyConfig();
//		propertyConfig.setFileServerWebUrl("https://localhost:8080/imperial-fire-app");
//		propertyConfig.setFileServerLocation("file-server/images/");
//		return new PropertyConfig();
//
//	}

//	@Bean
//	PropertyConfig config() {
//		 
//		return new PropertyConfig();
//
//	}

}
