package com.gul;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.gul.common.PropertyConfig;
import com.gul.dto.Mail;
import com.gul.service.MailServiceImpl;

//@DataJpaTest
//@AutoConfigureTestDatabase(replace = Replace.NONE)
//@Rollback(false)
//@AllArgsConstructor
//@RunWith(.class)
//@DataJpaTest

//@DataJpaTest
//@AutoConfigureTestDatabase(replace = Replace.NONE)

@RunWith(SpringRunner.class)
@SpringBootTest
public class CategoryRepositoryTest {

//	@Autowired
//	private CategoryRepository repository;

	@Autowired
//	@Qualifier("depClass") // Use a qualifier to specify the bean
	private PropertyConfig propertyConfig;
//	@Qualifier("depClass2")
	@Autowired
	private MailServiceImpl mailService;

//	@Test
//	public void testCreateCategory() {
//		Category saveCategory = repository.save(new Category("Eloctronics"));
//		assertThat(saveCategory.getId()).isGreaterThan(0);

//		assertNotNull(saveCategory);
//		        assertEquals("John Doe", savedEmployee.getName());
//	}

	@Test
	public void contextLoads() throws IOException {
		System.out.println("Hello");
		String loction = propertyConfig.getRequirementProductHtmlLocation();
		String html = FileUtils.readFileToString(new File(loction), StandardCharsets.UTF_8.name());
		System.out.println(loction);
		
		Mail mail = new Mail();
		mail.setMailFrom("gulfarooqui1@gmail.com");
		mail.setMailTo("gulfarooqui7326@gmail.com");
		mail.setMailSubject("Testing");

		mail.setMailContent(html);
		mailService.sendEmail(mail);
	}

//	@Test
//	void contextLoads() throws IOException {
//		System.out.println("!!!!!!!!!!!");
//		Mail mail = new Mail();
//		mail.setMailFrom("gulfarooqui1@gmail.com");
//		mail.setMailTo("gulfarooqui7326@gmail.com");
//		mail.setMailSubject("Otp");
//
//		String loction = propertyConfig.getRequirementProductHtmlLocation();
//		String html = FileUtils.readFileToString(new File(loction), StandardCharsets.UTF_8.name());
//		System.out.println(loction);
////		mail.setMailContent(html);
////		mailService.sendEmail(mail);
//
//	}
//	new Category("Eloctronics")

}
