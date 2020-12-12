package com.mycompany.mim.Control.Dao;

import com.mycompany.mim.Control.Model.Usuarios;
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
public class UserDao {

    //Crear Tabla
//   CREATE TABLE `db_test01`.`user` (
//  `idUser`          int unsigned NOT NULL AUTO_INCREMENT,
//  `Users_Name`      varchar(45) DEFAULT NULL,
//  `Users_Password`  varchar(45) DEFAULT NULL,
//  `Users_email`     varchar(45) DEFAULT NULL,
//  PRIMARY KEY (`idUser`),
//  UNIQUE KEY `idUser_UNIQUE` (`idUser`)
//) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
    //Crear Procedure
//USE `db_test01`;
//DROP procedure IF EXISTS `Resgistro`;
// 
//DELIMITER $$
//USE `db_test01`$$
//CREATE PROCEDURE `Resgistro` (
//IN pUsers_Name varchar(45),
//IN pUsers_Password varchar(45),
//IN pUsers_email varchar(45)
//)
//BEGIN
//INSERT INTO `db_test01`.`user`
//(`Users_Name`,
//`Users_Password`,
//`Users_email`)
//VALUES
//(pUsers_Name,
//pUsers_Password,
//pUsers_email);
//
//END$$
//
//DELIMITER ;
    public static List<Usuarios> getUsuariosL() {
        List<Usuarios> usuarios = new ArrayList<>();
        Connection con = null;
        try {
            con = DBConnect.getConnection();
            String sql = "call TraerUsers();";
            CallableStatement statement = con.prepareCall(sql);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                int ID_User = result.getInt(1);
                String Name_User = result.getString(2);
                String Email_User = result.getString(3);
                String Decr_User = result.getString(4);
                String Img_User = result.getString(5);
                int Puesto_User = result.getInt(6);
                usuarios.add(new Usuarios(ID_User, Email_User, Name_User, null, Img_User, Decr_User, Puesto_User));
            }
            return usuarios;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return usuarios;
    }

    public static int Registro(Usuarios usuario) {
        Connection con = null;
        try {
            con = DBConnect.getConnection();
            CallableStatement statement = con.prepareCall("call New_User(?,?,?);");
            statement.setString(1, usuario.getNEmail());
            statement.setString(2, usuario.getNUser());
            statement.setString(3, usuario.getNPassword());
            return statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }

    public static Usuarios LogIn(Usuarios usuario) {
        Connection con = null;
        try {
            con = DBConnect.getConnection();
            CallableStatement statement = con.prepareCall("call LogIn_User(?,?);");
            statement.setString(1, usuario.getNEmail());
            statement.setString(2, usuario.getNPassword());
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                int id = result.getInt(1);
                String email = result.getString("Email_Users_MIM");
                String username = result.getString("Name_Users_MIM");
                int puesto = result.getInt("Category_Users_MIM");
                String Descr = result.getString("Desc_Users_MIM");
                String Imagen = result.getString("Photo_Users_MIM");
                return new Usuarios(id, email, username, null, Imagen, Descr ,puesto);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }

    public static int Config(Usuarios usuario) {
        Connection con = null;
        try {
            con = DBConnect.getConnection();
            CallableStatement statement = con.prepareCall("call Config_User(?,?,?,?,?);");
            statement.setInt(1, usuario.getId());
            statement.setString(2, usuario.getNUser());
            statement.setString(3, usuario.getNPassword());
            statement.setString(4, usuario.getNImague());
            statement.setString(5, usuario.getNDescr());
            return statement.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }
}
