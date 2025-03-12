package com.gul.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gul.dto.CategoryDTO;
import com.gul.modal.Category;
import com.gul.modal.Product;
import com.gul.repositoy.CategoryRepository;
import com.gul.repositoy.ProductRepository;

@Controller
public class CategoryDTOController {

	@Autowired
	private CategoryRepository categoryRepository;
	@Autowired
	private ProductRepository productRepository;

	@GetMapping("/admin")
	public ModelAndView admin() {
//		System.out.println(repo.findAll());
		ModelAndView mav = new ModelAndView("admin");
		List<CategoryDTO> dtos = new ArrayList<>();
		List<Category> listCategories = categoryRepository.findAll(Sort.by(Sort.Direction.ASC, "name"));
		for (Category category : listCategories) {
//		category
			List<Product> listProducts = productRepository.findProductByCategoryId(category.getId());
			System.out.println(listProducts);
			
			if(!listProducts.isEmpty()) {
				CategoryDTO categoryDTO = new CategoryDTO();
			categoryDTO.setId(category.getId());
			categoryDTO.setCategoryName(category.getName());
			categoryDTO.setListProduct(listProducts);

			dtos.add(categoryDTO);
			}
			
		}

		mav.addObject("dtos", dtos);
		return mav;
	}

}
