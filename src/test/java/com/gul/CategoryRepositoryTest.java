package com.gul;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.annotation.Rollback;

import com.gul.modal.Category;
import com.gul.repositoy.CategoryRepository;

//@DataJpaTest
//@AutoConfigureTestDatabase(replace = Replace.NONE)
//@Rollback(false)
//@AllArgsConstructor
//@RunWith(.class)
//@DataJpaTest

//@DataJpaTest
//@AutoConfigureTestDatabase(replace = Replace.NONE)

@DataJpaTest
@AutoConfigureTestDatabase(replace = Replace.NONE)
@Rollback(false)
public class CategoryRepositoryTest {

	@Autowired
	private CategoryRepository repository;

	@Test
	public void testCreateCategory() {
//		Category saveCategory = repository.save(new Category("Eloctronics"));
//		assertThat(saveCategory.getId()).isGreaterThan(0);

//		assertNotNull(saveCategory);
//		        assertEquals("John Doe", savedEmployee.getName());
	}

//	@Test
//	void contextLoads() {
//		System.out.println("!!!!!!!!!!!");
//	}
//	new Category("Eloctronics")

}
