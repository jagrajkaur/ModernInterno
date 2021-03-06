package com.niit.dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDao {
	
	List<Product> getAllProducts();
	Product getProductById(int pid);
	boolean addProduct(Product product);
	boolean deleteProduct(Product product);
	void saveOrUpdateProduct(Product product);
	
}
