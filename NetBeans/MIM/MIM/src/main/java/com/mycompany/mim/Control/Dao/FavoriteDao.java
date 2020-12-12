/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mim.Control.Dao;

import com.mycompany.mim.Control.Model.Favorites;
import com.mycompany.mim.Control.Utils.DBConnect;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author amg05
 */
public class FavoriteDao {

    public static List<Favorites> getFavs() {
        List<Favorites> favorites = new ArrayList<>();
        Connection con = null;
        try {
            con = DBConnect.getConnection();
            String sql = "call VerFavs();";
            CallableStatement statement = con.prepareCall(sql);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                int ID_Fav = result.getInt(1);
                int ID_FavUser = result.getInt(2);
                int ID_FavNoti = result.getInt(3);
                favorites.add(new Favorites(ID_Fav, ID_FavUser, ID_FavNoti));
            }
            return favorites;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(FavoriteDao.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return favorites;
    }

    public static int GuardarNoti(Favorites favorites) {
        Connection con = null;
        try {
            con = DBConnect.getConnection();
            CallableStatement statement = con.prepareCall("call Añadir_Fav(?,?);");
            statement.setInt(1, favorites.getID_FavUser());
            statement.setInt(2, favorites.getID_FavNoti());
            return statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(FavoriteDao.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }

    public static int EliminarNoti(Favorites favorites) {
        Connection con = null;
        try {
            con = DBConnect.getConnection();
            CallableStatement statement = con.prepareCall("call EliminarFav(?,?);");
            statement.setInt(1, favorites.getID_FavUser());
            statement.setInt(2, favorites.getID_FavNoti());
            return statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(FavoriteDao.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }
}
