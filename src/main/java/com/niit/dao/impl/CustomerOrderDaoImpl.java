package com.niit.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CartDao;
import com.niit.dao.CustomerOrderDao;
import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.CustomerOrder;

@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@Autowired
    private CartDao cartDao;

	public void addCustomerOrder(CustomerOrder customerOrder) {
		
		try {
		Session session = sessionFactory.openSession();
        session.saveOrUpdate(customerOrder);
        session.flush();
        session.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}

	public double getCustomerOrderGrandTotal(int cartId) {
		double grandTotal = 0;
		try {
			
	        Cart cart = cartDao.getCartById(cartId);
	        List<CartItem> cartItems = cart.getCartItems();

	        for (CartItem item : cartItems){
	            grandTotal += item.getTotalPrice();
	        }

	        return grandTotal;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return  0;
		}
		
	}


}
