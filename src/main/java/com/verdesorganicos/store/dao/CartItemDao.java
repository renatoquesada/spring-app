package com.verdesorganicos.store.dao;

import com.verdesorganicos.store.model.Cart;
import com.verdesorganicos.store.model.CartItem;

/**
 * Created by Le on 1/25/2016.
 */
public interface CartItemDao {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);

}
