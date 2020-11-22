package com.mycompany.mim.Control.Dao;

import com.mycompany.mim.Control.Model.Usuarios;
import com.mycompany.mim.Control.Utils.DBConnect;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

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

    public static int Registro(Usuarios usuario){
        try{
            Connection con = DBConnect.getConnection();
            CallableStatement statement = con.prepareCall("call Registro(?,?,?)");
            statement.setString(1, usuario.getNEmail());
            statement.setString(2, usuario.getNUser());
            statement.setString(3, usuario.getNPassword());
            return statement.executeUpdate();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return 0;
    }
        public static Usuarios LogIn(Usuarios usuario){
        try{
            Connection con = DBConnect.getConnection();
            CallableStatement statement = con.prepareCall("CALL Ingresar(?,?);");
            statement.setString(1, usuario.getNEmail());
            statement.setString(2, usuario.getNPassword());
            ResultSet result = statement.executeQuery();
            while(result.next()){
                int id = result.getInt(1);
                String email = result.getString(2); 
                String username = result.getString(3); 
                return new Usuarios(id, email, username, null);
            }
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return null;
    }
}
