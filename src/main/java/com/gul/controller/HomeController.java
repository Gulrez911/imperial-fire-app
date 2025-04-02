package com.gul.controller;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Random;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gul.common.PropertyConfig;
import com.gul.dto.CategoryDTO;
import com.gul.dto.Country;
import com.gul.dto.Mail;
import com.gul.modal.Category;
import com.gul.modal.OtpAuth;
import com.gul.modal.Product;
import com.gul.modal.RequirementPorduct;
import com.gul.repositoy.CategoryRepository;
import com.gul.repositoy.OtpAuthRepository;
import com.gul.repositoy.ProductRepository;
import com.gul.repositoy.RequirementPorductRepository;
import com.gul.service.MailService;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {

	@Autowired
	private CategoryRepository categoryRepository;
	@Autowired
	private ProductRepository productRepository;
	@Autowired
	private PropertyConfig propertyConfig;

	@Autowired
	private MailService mailService;

	@Autowired
	private OtpAuthRepository authRepository;

	@Autowired
	private RequirementPorductRepository requirementPorductRepository;

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
		List<Product> listProducts = productRepository.findAll();
		System.out.println(listProducts);
		mav.addObject("listProducts", listProducts);
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

	@GetMapping("/country")
	public ModelAndView country() {
		ModelAndView mav = new ModelAndView("ajax");
//		System.out.println(country)
//		countDao.save(country);
		mav.addObject("country", new Country());
		return mav;
	}

	@PostMapping(path = "/nextstep", consumes = "application/x-www-form-urlencoded")
	public @ResponseBody Map<String, Object> nextstep(
			@ModelAttribute("requirementPorduct") RequirementPorduct requirementPorduct2,
			HttpSession session) throws IOException {
		System.out.println("okok" + requirementPorduct2.getProductName() + " "
				+ requirementPorduct2.getUserEmail() + " " + requirementPorduct2.getImageUrl());
		Map<String, Object> map = new HashMap<>();

		session.setAttribute("productName", requirementPorduct2.getProductName());
		session.setAttribute("productId", requirementPorduct2.getProductId());

		session.setAttribute("quantity", requirementPorduct2.getQuantity());
		session.setAttribute("additionalDetail", requirementPorduct2.getAdditionalDetail());
		session.setAttribute("userEmail", requirementPorduct2.getUserEmail());
		session.setAttribute("phone", requirementPorduct2.getPhone());

		String email = requirementPorduct2.getUserEmail();
		String otp = "";
		otp = new DecimalFormat("000000").format(new Random().nextInt(999999));
		System.out.println(otp);
		OtpAuth otpAuth = new OtpAuth();
		otpAuth.setOtp(otp);
		otpAuth.setUserEmail(email);
//		OtpAuth otpAuth2 = authRepository.findById(email);
		OtpAuth otpAuth2 = authRepository.findByUserEmail(email);
		if (otpAuth2 != null) {
			authRepository.deleteById(otpAuth2.getId());

		} else {
			authRepository.save(otpAuth);
		}
		Mail mail = new Mail();
		mail.setMailFrom("gulfarooqui1@gmail.com");
		mail.setMailTo(email);
		mail.setMailSubject("Imperial Safety Services");

		String loction = propertyConfig.getOtpHtmlLcation();
		String html = FileUtils.readFileToString(new File(loction), StandardCharsets.UTF_8.name());
//		String html2 = FileUtils.readFileToString(new File(loction));
//		User user = (User) request.getSession().getAttribute("user");
//		 Test test = (Test) request.getSession().getAttribute("test");
		html = html.replace("{otp}", otp);

		mail.setMailContent(html);
		mailService.sendEmail(mail);
		map.put("email", email);
		return map;
	}

	@PostMapping(path = "/confirmOtp", consumes = "application/x-www-form-urlencoded")
	public @ResponseBody Map<String, Object> confirmOtp(@RequestParam(name = "email") String email2,
			@RequestParam(name = "otp") String otp2, HttpSession session) throws IOException {

		OtpAuth otpAuth2 = authRepository.findByUserEmail(email2);
//		otpAuth2.getOtp()

		Map<String, Object> map = new HashMap<>();

		if (otpAuth2.getOtp().equals(otp2)) {
			System.out.println("true");
			map.put("check", "true");
			map.put("email", email2);

			String productName = (String) session.getAttribute("productName");
			Long productId = (Long) session.getAttribute("productId");
			Integer quantity = (Integer) session.getAttribute("quantity");
			String additionalDetail = (String) session.getAttribute("additionalDetail");
			String userEmail = (String) session.getAttribute("userEmail");
			Long phone = (Long) session.getAttribute("phone");

			RequirementPorduct requirementPorduct = new RequirementPorduct();
			requirementPorduct.setProductName(productName);
			requirementPorduct.setProductId(productId);
			requirementPorduct.setQuantity(quantity);
			requirementPorduct.setAdditionalDetail(additionalDetail);
			requirementPorduct.setUserEmail(userEmail);
			requirementPorduct.setPhone(phone);

			requirementPorductRepository.save(requirementPorduct);

			// send product requirements details to mail
			Mail mail = new Mail();
			mail.setMailFrom("gulfarooqui1@gmail.com");
			mail.setMailTo(email2);
			mail.setMailSubject("Otp");

			String loction = propertyConfig.getRequirementProductHtmlLocation();
			String html = FileUtils.readFileToString(new File(loction),
					StandardCharsets.UTF_8.name());

			html = html.replace("{productName}", productName);
			Date date = new Date();
			SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
			formatter = new SimpleDateFormat("dd MMMM yyyy");
			String reqDate = formatter.format(date);
			html = html.replace("{date}", reqDate);
			html = html.replace("{quantity}", quantity.toString());
			html = html.replace("{additionalDetail}", additionalDetail);
			html = html.replace("{userEmail}", userEmail);
			html = html.replace("{phone}", phone.toString());

			mail.setMailContent(html);
			mailService.sendEmail(mail);

		} else {
			map.put("check", "false");

		}

		return map;
	}

	@PostMapping(path = "/removeOtp", consumes = "application/x-www-form-urlencoded")
	public @ResponseBody Map<String, Object> removeOtp(@RequestParam(name = "email") String email2)
			throws IOException {

//		authRepository.deleteByUserEmail(email2);

		OtpAuth otpAuth = authRepository.findByUserEmail(email2);
		authRepository.deleteById(otpAuth.getId());

		Map<String, Object> map = new HashMap<>();
		map.put("msg", "otp deleted");
		return map;
	}

	@PostMapping(path = "/resendOtp", consumes = "application/x-www-form-urlencoded")
	public @ResponseBody Map<String, Object> resendOtp(@RequestParam(name = "email") String email2)
			throws IOException {

		OtpAuth otpAuth = authRepository.findByUserEmail(email2);
		Mail mail = new Mail();
		mail.setMailFrom("gulfarooqui1@gmail.com");
		mail.setMailTo(email2);
		mail.setMailSubject("Otp");

		String loction = propertyConfig.getOtpHtmlLcation();
		String html = FileUtils.readFileToString(new File(loction), StandardCharsets.UTF_8.name());

		html = html.replace("{otp}", otpAuth.getOtp());

		mail.setMailContent(html);
		mailService.sendEmail(mail);

		Map<String, Object> map = new HashMap<>();
		map.put("msg", "resend otp");
		return map;
	}

//	@PostMapping(path = "/process", consumes = "application/x-www-form-urlencoded")
//	public ResponseEntity<Void> saveOrUpdateCompany(@ModelAttribute("country") Country country2) {
//		System.out.println("okok" + country2.getName() + " " + country2.getEmail() + " "
//				+ country2.getSuperheroAlias());
//		return new ResponseEntity<Void>(HttpStatus.OK);
//	}

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

}
