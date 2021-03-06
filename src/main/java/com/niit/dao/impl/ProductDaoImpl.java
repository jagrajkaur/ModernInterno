package com.niit.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.ProductDao;
import com.niit.model.Product;

@Transactional
@Repository

public class ProductDaoImpl implements ProductDao {

	@Autowired
	SessionFactory sessionfactory;
	public List<Product> getAllProducts() {
		// TODO Auto-generated method stub
		List<Product> allProducts = new ArrayList<Product>();
		try {
			Session session = sessionfactory.openSession();
			Query q = session.createQuery("from Product");
			allProducts=q.list();
			session.close();
			return allProducts;
		}catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}
	}
	public Product getProductById(int pid) {
		
		try {
			Session session = sessionfactory.openSession();
			Product product = (Product) session.get(Product.class, pid);
			session.close();
			return product;
			
		}catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}
	}
	public boolean addProduct(Product product) {
		try {
			Session session = sessionfactory.openSession();
			session.save(product);
			session.close();
			return true;
		}catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
		}
	}
	public boolean deleteProduct(Product product) {
		try {
			Session session = sessionfactory.openSession();
			Query q = session.createQuery("delete from Product where id=?");
			q.setInteger(0, product.getPid());
			q.executeUpdate();
			session.close();
			return true;
			
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return false;
		
	}
	public void saveOrUpdateProduct(Product product) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionfactory.openSession();
			System.out.println("Id og the product" + product.getPid());
			session.update(product);
			session.flush();
			System.out.println("After inserting id of the product is "+product.getPid());
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		
	}
	
}
