/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author FAME
 */
public class Cart implements Serializable{
    private Map<String, IteminCart> cart;

    public Cart() {
        cart = new HashMap();
    }

    public void add(Product p) {
        IteminCart line = cart.get(p.getProductname());
        if (line == null) {
            cart.put(p.getProductname(), new IteminCart(p));
        } else {
            line.setQuanlity(line.getQuanlity() + 1);
        }
    }

    public void remove(Product p) {
        this.remove(p.getProductname());
    }

    public void remove(String productCode) {
        cart.remove(productCode);
    }

    public double getTotalPrice() {
        double sum = 0;
        Collection<IteminCart> lineItems = cart.values();
        for (IteminCart lineItem : lineItems) {
            sum += lineItem.getSalePrice();
        }
        return sum;
    }

    public int getTotalQuantity() {
        int sum = 0;
        Collection<IteminCart> lineItems = cart.values();
        for (IteminCart lineItem : lineItems) {
            sum += lineItem.getQuanlity();
        }
        return sum;
    }
    public List<IteminCart> getLineItems(){
        return new ArrayList(cart.values());
    }
}