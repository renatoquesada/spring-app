package com.verdesorganicos.store.service;

import com.verdesorganicos.store.model.Cart;
import com.verdesorganicos.store.model.CartItem;

/**
 * Created by renato on 1/25/2016.
 */
public interface CartItemService {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);
}
