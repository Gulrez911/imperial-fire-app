package com.gul.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.sql.rowset.serial.SerialException;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gul.common.PropertyConfig;
import com.gul.modal.Category;
import com.gul.modal.Product;
import com.gul.repositoy.CategoryRepository;
import com.gul.repositoy.ProductRepository;

@Controller
public class ProductController {

	@Autowired
	private ProductRepository productRepository;
	@Autowired
	private CategoryRepository categoryRepository;
	@Autowired
	private PropertyConfig propertyConfig;

	@GetMapping("/index")
	public ModelAndView home33() {
		ModelAndView view = new ModelAndView("index");
		return view;
	}

	// display image
//	@GetMapping("/productDisplay")
//	public ResponseEntity<byte[]> productDisplay(@RequestParam("id") Long id) throws IOException, SQLException {
//		Optional<Product> image = productRepository.findById(id);
//		byte[] imageBytes = null;
//		imageBytes = image.get().getProductImage().getBytes(1,
//				(int) image.get().getProductImage().length());
//		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
//	}

	@GetMapping("/productList")
	public ModelAndView productList() {
		ModelAndView mav = new ModelAndView("listProducts");
		List<Product> listProducts = productRepository.findAll();
		mav.addObject("listProducts", listProducts);
		return mav;

	}

	@GetMapping("/newProduct")
	public ModelAndView newProduct() {

		ModelAndView mav = new ModelAndView("newProduct");

		List<Category> listCategories = categoryRepository.findAll();
		System.out.println(categoryRepository.findAll());
		mav.addObject("product", new Product());
		mav.addObject("listCategories", listCategories);
		return mav;
	}

	@GetMapping(value = "/image", produces = MediaType.IMAGE_JPEG_VALUE)
	public @ResponseBody byte[] getImage2(@RequestParam(name = "img", required = false) String image2)
			throws IOException {

		String destination = propertyConfig.getFileServerLocation() + File.separator + image2;
		File initialFile = new File(destination);
		InputStream in = new FileInputStream(initialFile);
		return IOUtils.toByteArray(in);
	}

	@PostMapping("saveProduct")
	public ModelAndView saveCategory(@ModelAttribute("product") Product product,
			@RequestParam(name = "addImage", required = false) MultipartFile addImage)
			throws IOException, SerialException, SQLException, InterruptedException {
		ModelAndView mav = new ModelAndView("listProducts");
		System.out.println(product.getId());

		if (addImage.isEmpty() && product.getId() == null) {
			ModelAndView mav2 = new ModelAndView("newProduct");

			List<Category> listCategories = categoryRepository.findAll();

			mav2.addObject("listCategories", listCategories);

			mav2.addObject("product", product);

			mav2.addObject("message", "Image not selected");// later put it as label
			mav2.addObject("msgtype", "Failure");
			mav2.addObject("icon", "error");
			return mav2;
		}

		if (product.getId() == null || addImage != null && addImage.getSize() != 0) {

			String destination = propertyConfig.getFileServerLocation() + File.separator
					+ addImage.getOriginalFilename();

			File file = new File(destination);

			if (file.exists()) {
				if (addImage.getOriginalFilename() != null
						&& addImage.getOriginalFilename().trim().length() > 0) {

					Path path = Paths.get(file.getAbsolutePath());

					try {
						// Delete the file
						for (int i = 0; i < 6; i++) {
							Thread.sleep(500);
							System.gc();
							if (Files.deleteIfExists(path)) {
								System.out.println("File deleted successfully.");
								break;
							}
						}
//						Files.delete(path);
					} catch (IOException e) {
						System.err.println("Failed to delete the file: "
								+ e.getMessage());
					}
//					FileUtils.forceDelete(file);
//						FileUtils.deleteQuietly(file);

				}

			}
			if (addImage.getOriginalFilename() != null
					&& addImage.getOriginalFilename().trim().length() > 0) {
				String imageUrl = propertyConfig.getBaseUrl() + "image?img="
						+ addImage.getOriginalFilename();
				addImage.transferTo(file);
				product.setImageUrl(imageUrl);
				product.setImageName(addImage.getOriginalFilename());
			}
		} else {
			Optional<Product> product33 = productRepository.findById(product.getId());
			product.setImageUrl(product33.get().getImageUrl());
			product.setImageName(product33.get().getImageName());

		}

		if (product.getId() == null) {
			 
				product.setCreateDate(new Date());
			 
			productRepository.save(product);
			mav.addObject("message", "Product Created");// later put it as label
			mav.addObject("msgtype", "Success");
			mav.addObject("icon", "success");
		} else {
			
			 
				Optional<Product> proOptional= productRepository.findById(product.getId());
				product.setCreateDate(proOptional.get().getCreateDate());
				product.setUpdateDate(new Date());
			 
			
			productRepository.save(product);
			mav.addObject("message", "Product Updated");// later put it as label
			mav.addObject("msgtype", "Success");
			mav.addObject("icon", "success");
		}
		List<Product> listProducts = productRepository.findAll();
		mav.addObject("listProducts", listProducts);

		System.out.println(" :  " + listProducts);
		return mav;
	}

	@GetMapping("updateProduct")
	public ModelAndView updateProduct(@RequestParam("id") Long id) {
		ModelAndView mav = new ModelAndView("newProduct");

		Optional<Product> product = productRepository.findById(id);

		List<Category> listCategories = categoryRepository.findAll();

		mav.addObject("listCategories", listCategories);

		mav.addObject("product", product.get());
//		mav.addObject("productImage", product.get().getProductImage());
		return mav;
	}

	@GetMapping("deleteProduct")
	public ModelAndView deleteProduct(@RequestParam("id") Long id) {
		ModelAndView mav = new ModelAndView("listProducts");
		System.out.println("??????????");
		Optional<Product> product = productRepository.findById(id);

//		Optional<Category> category = categoryRepository.findById(product.get().getCategory().getId());
//		if (category != null) {
		productRepository.deleteById(id);
//			System.out.println("true");
//		} else {
//			System.out.println("false");
//		}

		List<Product> listProducts = productRepository.findAll();

		mav.addObject("message", "Product Deleted");
		mav.addObject("msgtype", "Success");
		mav.addObject("icon", "success");

		mav.addObject("listProducts", listProducts);
		return mav;
	}

}