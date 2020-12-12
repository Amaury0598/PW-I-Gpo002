/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mim.Control.Model;

/**
 *
 * @author amg05
 */
public class Category {

    private int Id_Cat;
    private String Name_Cat;
    private int Order_Cat;

    public Category() {
    }

    public Category(int Id_Cat, String Name_Cat) {
        this.Id_Cat = Id_Cat;
        this.Name_Cat = Name_Cat;
    }

    public Category(int Id_Cat, String Name_Cat, int Order_Cat) {
        this.Id_Cat = Id_Cat;
        this.Name_Cat = Name_Cat;
        this.Order_Cat = Order_Cat;
    }

    public int getId_Cat() {
        return Id_Cat;
    }

    public void setId_Cat(int Id_Cat) {
        this.Id_Cat = Id_Cat;
    }

    public String getName_Cat() {
        return Name_Cat;
    }

    public void setName_Cat(String Name_Cat) {
        this.Name_Cat = Name_Cat;
    }

    public int getOrder_Cat() {
        return Order_Cat;
    }

    public void setOrder_Cat(int Order_Cat) {
        this.Order_Cat = Order_Cat;
    }
}
