package com.gul.repositoy;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gul.modal.Category;

public interface CategoryRepository extends JpaRepository<Category, Long> {

}
