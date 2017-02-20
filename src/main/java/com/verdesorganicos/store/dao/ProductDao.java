package com.verdesorganicos.store.dao;

import com.verdesorganicos.store.model.Product;

import java.util.List;

/**
 * Created by Le on 1/6/2016.
 */
public interface ProductDao {

    List<Product> getProductList();

    List<Product> getProductListByCategory(String category);

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
