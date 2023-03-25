package com.metehan.springapp.repository;

import com.metehan.springapp.entity.Product;
import org.springframework.data.repository.CrudRepository;

public interface ProductRepository extends CrudRepository<Product, Long> {
}
