/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author FAME
 */
public class IteminCart implements Serializable{
    private Product product;
    private int salePrice;
    private int quantity;
    
    public IteminCart(){
    }
    public IteminCart(Product product){
        this(product,1);
    }
    
    public IteminCart(Product product,int quantity){
        this.product = product;
        this.quantity = quantity;
        this.salePrice = product.getProductprice();
    }
    
    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public double getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(int salePrice) {
        this.salePrice = salePrice;
    }

    public int getQuanlity() {
        return quantity;
    }

    public void setQuanlity(int quanlity) {
        this.quantity = quanlity;
    }
    
    
    
}
