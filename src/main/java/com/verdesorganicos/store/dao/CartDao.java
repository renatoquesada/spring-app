package com.verdesorganicos.store.dao;

import com.verdesorganicos.store.model.Cart;

import java.io.IOException;

/**
 * Created by renato on 1/11/2016.
 */
public interface CartDao {

    Cart getCartById(int cartId);

    Cart validate(int cartId) throws IOException;

    void update(Cart cart);
}
