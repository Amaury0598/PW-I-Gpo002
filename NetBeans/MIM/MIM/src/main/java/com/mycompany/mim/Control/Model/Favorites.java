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
public class Favorites {
    
    private int ID_Fav;
    private int ID_FavUser;
    private int ID_FavNoti;

    public Favorites(int ID_Fav, int ID_FavUser, int ID_FavNoti) {
        this.ID_Fav = ID_Fav;
        this.ID_FavUser = ID_FavUser;
        this.ID_FavNoti = ID_FavNoti;
    }

    public Favorites(int ID_FavUser, int ID_FavNoti) {
        this.ID_FavUser = ID_FavUser;
        this.ID_FavNoti = ID_FavNoti;
    }

    public int getID_Fav() {
        return ID_Fav;
    }

    public int getID_FavUser() {
        return ID_FavUser;
    }

    public int getID_FavNoti() {
        return ID_FavNoti;
    }

    public void setID_Fav(int ID_Fav) {
        this.ID_Fav = ID_Fav;
    }

    public void setID_FavUser(int ID_FavUser) {
        this.ID_FavUser = ID_FavUser;
    }

    public void setID_FavNoti(int ID_FavNoti) {
        this.ID_FavNoti = ID_FavNoti;
    }
}
