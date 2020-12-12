/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mim.Control.Dao;

import com.mycompany.mim.Control.Model.Category;
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
public class CategoryDao {

    public static int InsertCategory(Category category) {
        Connection con = null;
        try {
            con = DBConnect.getConnection();
            String sql = "call Add_Category(?,?);";
            CallableStatement statement = con.prepareCall(sql);
            statement.setString(1, category.getName_Cat());
            statement.setInt(2, category.getOrder_Cat());
            return statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }

    public static List<Category> getCategories() {
        List<Category> categories = new ArrayList<>();
        Connection con = null;
        try {
            con = DBConnect.getConnection();
            String sql = "call Get_Category();";
            CallableStatement statement = con.prepareCall(sql);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                int Id_cat = result.getInt(1);
                String Name_Cat = result.getString(2);
                int Order_Cat = result.getInt(3);
                categories.add(new Category(Id_cat, Name_Cat, Order_Cat));
            }
            return categories;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return categories;
    }
}
