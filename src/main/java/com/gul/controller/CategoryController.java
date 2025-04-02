package com.gul.controller;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gul.modal.Category;
import com.gul.modal.Product;
import com.gul.repositoy.CategoryRepository;
import com.gul.repositoy.ProductRepository;

@Controller
public class CategoryController {

	@Autowired
	private CategoryRepository repo;
	@Autowired
	private ProductRepository productRepository;

//	@GetMapping("/index")
//	public ModelAndView home33() {
//		ModelAndView view = new ModelAndView("index");
//		return view;
//	}

//	@GetMapping("/categoryList")
//	public ModelAndView newEmployee(Model model) {
//		List<Category> listCategories = repo.findAll();
//		model.addAttribute("listCategories", listCategories);
//		return "categories";
//
//	}

//	

	@GetMapping("/newCategory")
	public ModelAndView newCategory() {
//		System.out.println(repo.findAll());
		ModelAndView mav = new ModelAndView("newCategory");
		mav.addObject("category", new Category());
		return mav;
	}

	@PostMapping("saveCategory")
	public ModelAndView saveCategory(@ModelAttribute("category") Category category) {
		ModelAndView mav = new ModelAndView("categoryList");
		if(category.getId()==null) {
			category.setCreateDate(new Date());
		}else {
			Optional<Category> category2 = repo.findById(category.getId());
			category.setCreateDate(category2.get().getCreateDate());
			category.setUpdateDate(new Date());
		}
		repo.save(category);
		List<Category> listCategories = repo.findAll();
		mav.addObject("listCategories", listCategories);
		mav.addObject("message", "Category Update Successfully");// later put it as label
		mav.addObject("msgtype", "Success");
		mav.addObject("icon", "success");
		System.out.println(" :  " + listCategories);
		return mav;
	}

	@GetMapping("categoryList")
	public ModelAndView categoryList() {
		ModelAndView mav = new ModelAndView("categoryList");
		List<Category> listCategories = repo.findAll();
		mav.addObject("listCategories", listCategories);

		return mav;
	}

	@GetMapping("deleteCategory")
	public ModelAndView deleteCategory(@RequestParam("id") Long id) {
		ModelAndView mav = new ModelAndView("categoryList");

		List<Product> listProducts = productRepository.findProductByCategoryId(id);
		if (listProducts.isEmpty()) {
			repo.deleteById(id);

			mav.addObject("message", "Category Deleted Successfully");// later put it as label
			mav.addObject("msgtype", "Success");
			mav.addObject("icon", "success");
		} else {
			mav.addObject("message", "Category Cannot Delete");
			mav.addObject("msgtype", "Failure");
			mav.addObject("icon", "error");
		}

		List<Category> listCategories = repo.findAll();
		mav.addObject("listCategories", listCategories);
		return mav;
	}

	@GetMapping("updateCategory")
	public ModelAndView updateCategory(@RequestParam("id") Long id) {
		ModelAndView mav = new ModelAndView("newCategory");
		Optional<Category> category = repo.findById(id);
		mav.addObject("category", category.get());
		return mav;
	}

}
