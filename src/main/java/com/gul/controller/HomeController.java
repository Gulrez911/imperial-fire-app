package com.gul.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gul.common.PropertyConfig;
import com.gul.dto.CategoryDTO;
import com.gul.modal.Category;
import com.gul.modal.Product;
import com.gul.repositoy.CategoryRepository;
import com.gul.repositoy.ProductRepository;

@Controller
public class HomeController {

	@Autowired
	private CategoryRepository categoryRepository;
	@Autowired
	private ProductRepository productRepository;
	@Autowired
	private PropertyConfig propertyConfig;

	@GetMapping("/home")
	public ModelAndView admin() {
//		System.out.println(repo.findAll());
		ModelAndView mav = new ModelAndView("home");

		System.out.println(propertyConfig.getBaseUrl());

		List<CategoryDTO> dtos = new ArrayList<>();
		List<Category> listCategories = categoryRepository.findAll(Sort.by(Sort.Direction.ASC, "name"));
		for (Category category : listCategories) {
//		category
			List<Product> listProducts = productRepository.findProductByCategoryId(category.getId());
			System.out.println(listProducts);

			if (!listProducts.isEmpty()) {
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

	@GetMapping("/productDetail")
	public ModelAndView productDetail(@RequestParam(name = "productId", required = false) Long Id) {
//		System.out.println(repo.findAll());
		ModelAndView mav = new ModelAndView("productDetail");
		Optional<Product> product33 = productRepository.findById(Id);

//		List<Product> products = productRepository.findByOrderBySeatNumberAsc(Limit.of(1));

		List<Product> listProducts = productRepository
				.findProductByLimit(product33.get().getCategory().getId());
		System.out.println(listProducts);

//		navbar

		List<CategoryDTO> dtos = new ArrayList<>();
		List<Category> listCategories = categoryRepository.findAll(Sort.by(Sort.Direction.ASC, "name"));
		for (Category category : listCategories) {
//		category
			List<Product> listProducts2 = productRepository.findProductByCategoryId(category.getId());
			System.out.println(listProducts2);

			if (!listProducts2.isEmpty()) {
				CategoryDTO categoryDTO = new CategoryDTO();
				categoryDTO.setId(category.getId());
				categoryDTO.setCategoryName(category.getName());
				categoryDTO.setListProduct(listProducts2);

				dtos.add(categoryDTO);
			}

		}

		mav.addObject("dtos", dtos);

//		
		mav.addObject("listProducts", listProducts);
		mav.addObject("product", product33.get());
		return mav;
	}

	@GetMapping("/allProduct")
	public ModelAndView allProduct(@RequestParam(name = "id", required = false) Long catId) {
//		System.out.println(repo.findAll());
		ModelAndView mav = new ModelAndView("allProduct");

//		List<Product> products = productRepository.findByOrderBySeatNumberAsc(Limit.of(1));

		List<Product> listProducts = productRepository.findProductByCategoryId(catId);
		int flag = 0;
		for (Product product : listProducts) {
			if (flag == 0) {
				String cateName = product.getCategory().getName();
				mav.addObject("cateName", cateName);
				flag = 1;
			}
		}

//		navbar

		List<CategoryDTO> dtos = new ArrayList<>();
		List<Category> listCategories = categoryRepository.findAll(Sort.by(Sort.Direction.ASC, "name"));
		for (Category category : listCategories) {
//		category
			List<Product> listProducts2 = productRepository.findProductByCategoryId(category.getId());
			System.out.println(listProducts2);

			if (!listProducts2.isEmpty()) {
				CategoryDTO categoryDTO = new CategoryDTO();
				categoryDTO.setId(category.getId());
				categoryDTO.setCategoryName(category.getName());
				categoryDTO.setListProduct(listProducts2);

				dtos.add(categoryDTO);
			}

		}

		mav.addObject("dtos", dtos);

//		
		mav.addObject("listProducts", listProducts);
		
		return mav;
	}

	@GetMapping("/showroom")
	public ModelAndView showroom() {
//		System.out.println(repo.findAll());
		ModelAndView mav = new ModelAndView("showroom");

//		List<Product> products = productRepository.findByOrderBySeatNumberAsc(Limit.of(1));

//		List<Product> listProducts = productRepository.findProductByCategoryId(catId);
//		System.out.println(listProducts);

//		navbar

		List<CategoryDTO> dtos = new ArrayList<>();
		List<Category> listCategories = categoryRepository.findAll(Sort.by(Sort.Direction.ASC, "name"));

		for (Category category : listCategories) {
//		category
			List<Product> listProducts2 = productRepository.findProductByCategoryId(category.getId());
			System.out.println(listProducts2);

			if (!listProducts2.isEmpty()) {
				CategoryDTO categoryDTO = new CategoryDTO();
				categoryDTO.setId(category.getId());
				categoryDTO.setCategoryName(category.getName());
				categoryDTO.setListProduct(listProducts2);

				dtos.add(categoryDTO);
			}

		}

		mav.addObject("dtos", dtos);

//		
//		mav.addObject("listProducts", listProducts);
		return mav;
	}

	@GetMapping("/companyProfile")
	public ModelAndView companyProfile() {
		ModelAndView mav = new ModelAndView("companyProfile");
		List<CategoryDTO> dtos = new ArrayList<>();
		List<Category> listCategories = categoryRepository.findAll(Sort.by(Sort.Direction.ASC, "name"));

		for (Category category : listCategories) {
//		category
			List<Product> listProducts2 = productRepository.findProductByCategoryId(category.getId());
			System.out.println(listProducts2);

			if (!listProducts2.isEmpty()) {
				CategoryDTO categoryDTO = new CategoryDTO();
				categoryDTO.setId(category.getId());
				categoryDTO.setCategoryName(category.getName());
				categoryDTO.setListProduct(listProducts2);

				dtos.add(categoryDTO);
			}

		}
		mav.addObject("dtos", dtos);
		return mav;
	}

//	@GetMapping("/image")
//	@ResponseBody
//	public ResponseEntity<byte[]> getImage() throws IOException {
//		// Load image data
//
//		String destination = propertyConfig.getFileServerLocation() + File.separator
//				+ "megha8shukla_20230829_p_3179915478389066891_4_3.jpg";
//
//		ClassPathResource resource = new ClassPathResource(destination);
//		byte[] imageData = Files.readAllBytes(resource.getFile().toPath());
//
//		// Set content type header
//		HttpHeaders headers = new HttpHeaders();
//		headers.setContentType(MediaType.ALL);
//
//		// Return image data as ResponseEntity
//		return new ResponseEntity<>(imageData, headers, HttpStatus.OK);
//	}

//	@GetMapping(value = "/image", produces = MediaType.IMAGE_JPEG_VALUE)
//	@GetMapping(value = "/image", produces = MediaType.IMAGE_PNG_VALUE)
//	public @ResponseBody byte[] getImage2() throws IOException {
//
//		String destination = propertyConfig.getFileServerLocation() + File.separator
//				+ "fruit-1218166_640.png";
// 		File initialFile = new File(destination);
//		InputStream in = new FileInputStream(initialFile);
//		return IOUtils.toByteArray(in);
//	}

//	@GetMapping("/image")
//	@ResponseBody
//	public ResponseEntity<InputStreamResource> getImageDynamicType() {
//	    MediaType contentType =  MediaType.IMAGE_JPEG : MediaType.IMAGE_PNG;
//		MediaType contentType = MediaType.IMAGE_PNG;
//		InputStream in =
//
//				getClass().getResourceAsStream("E:\\file-server\\images\\fruit-1218166_640.png");
//		return ResponseEntity.ok().contentType(contentType).body(new InputStreamResource(in));
//	}

//	@GetMapping("/images")
//	public ResponseEntity<Resource> getImage() {
//	    try {
//		    String destination = propertyConfig.getFileServerLocation() + File.separator;
//	        Path filePath = Paths.get(destination).resolve("megha8shukla_20230829_p_3179915478389066891_4_3.jpg");
//	        Resource resource = new UrlResource(filePath.toUri());
//	        
//	        if (resource.exists()) {
//	            return ResponseEntity.ok()
//	                    .contentType(MediaType.IMAGE_JPEG)
//	                    .body(resource);
//	        } else {
//	            return ResponseEntity.notFound().build();
//	        }
//	    } catch (MalformedURLException e) {
//	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
//	    }
//	}

}
