package com.verdesorganicos.store.service.impl;

import com.verdesorganicos.store.dao.CustomerOrderDao;
import com.verdesorganicos.store.model.Cart;
import com.verdesorganicos.store.model.CartItem;
import com.verdesorganicos.store.model.CustomerOrder;
import com.verdesorganicos.store.service.CartService;
import com.verdesorganicos.store.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Le on 1/25/2016.
 */

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

    @Autowired
    private CustomerOrderDao customerOrderDao;

    @Autowired
    private CartService cartService;

    public void addCustomerOrder(CustomerOrder customerOrder) {
        customerOrderDao.addCustomerOrder(customerOrder);
    }

    public double getCustomerOrderGrandTotal(int cartId) {
        double grandTotal = 0;
        Cart cart = cartService.getCartById(cartId);
        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems) {
            grandTotal += item.getTotalPrice();
        }

        return grandTotal;
    }
}
