package com.verdesorganicos.store.service;

import com.verdesorganicos.store.model.Product;

import java.util.List;

/**
 * Created by renato on 1/24/2016.
 */
public interface ProductService {

    List<Product> getProductList();

    List<Product> getProductListByCategory(String category);

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
