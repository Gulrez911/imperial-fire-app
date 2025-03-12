package com.gul.repositoy;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.gul.modal.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {

	@Query(value = "SELECT * FROM Product q WHERE q.category_id=:category_id", nativeQuery = true)
	public List<Product> findProductByCategoryId(@Param("category_id") Long category_id);
	
	@Query(value = "SELECT * FROM Product q WHERE q.category_id=:category_id limit 4", nativeQuery = true)
	public List<Product> findProductByLimit(@Param("category_id") Long category_id);
}
