package com.verdesorganicos.store.service;

import com.verdesorganicos.store.model.Cart;

/**
 * Created by renato on 1/25/2016.
 */
public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
