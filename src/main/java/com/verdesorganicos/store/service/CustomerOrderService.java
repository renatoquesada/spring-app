package com.verdesorganicos.store.service;

import com.verdesorganicos.store.model.CustomerOrder;

/**
 * Created by Le on 1/25/2016.
 */
public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
