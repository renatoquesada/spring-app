package com.emusicstore.service;

import com.emusicstore.model.Product;

import java.util.List;

/**
 * Created by Le on 1/24/2016.
 */
public interface ProductService {

    List<Product> getProductList();

    List<Product> getProductListByCategory(String category);

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
