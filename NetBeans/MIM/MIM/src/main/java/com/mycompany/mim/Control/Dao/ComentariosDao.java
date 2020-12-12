/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mim.Control.Dao;

import com.mycompany.mim.Control.Model.Comentarios;
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
public class ComentariosDao {

    public static List<Comentarios> getNotis() {
        List<Comentarios> comentarios = new ArrayList<>();
        Connection con = null;
        try {
            con = DBConnect.getConnection();
            String sql = "call TodosComment();";        //
            CallableStatement statement = con.prepareCall(sql);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                int ID_Comment = result.getInt(1);
                int ID_NotiComment = result.getInt(2);
                int ID_UsuaComment = result.getInt(3);
                String Comment_Content = result.getString(4);
                int ID_Respo = result.getInt(5);
                String Date = result.getString(6);
                comentarios.add(new Comentarios(ID_Comment, ID_NotiComment, ID_UsuaComment, Comment_Content, ID_Respo, Date));
            }
            return comentarios;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ComentariosDao.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return comentarios;
    }

    public static int SubirComment(Comentarios comentario) {
        Connection con = null;
        try {
            con = DBConnect.getConnection();
            CallableStatement statement = con.prepareCall("call Comentar(?,?,?);");
            statement.setInt(1, comentario.getID_Noticia_Comemnt());
            statement.setString(2, comentario.getContent_Comment());
            statement.setInt(3, comentario.getUD_Usuario_Comment());
            return statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ComentariosDao.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }
    
        public static int SubirRespu(Comentarios comentario) {
        Connection con = null;
        try {
            con = DBConnect.getConnection();
            CallableStatement statement = con.prepareCall("call Respuestas(?,?,?,?);");
             statement.setInt(1, comentario.getID_Comment());
            statement.setInt(2, comentario.getID_Noticia_Comemnt());
            statement.setString(3, comentario.getContent_Comment());
            statement.setInt(4, comentario.getUD_Usuario_Comment());
   
            return statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ComentariosDao.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }

    public static Comentarios VerCommentUnaNoti(Comentarios comentario) {
        Connection con = null;
        try {
            con = DBConnect.getConnection();
            CallableStatement statement = con.prepareCall("call VerCommentUnaNoti(?);");
            statement.setInt(1, comentario.getID_Noticia_Comemnt());
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                int ID_Comment = result.getInt("ID_Comments");
                int ID_NotiComment = result.getInt("ID_Noticia");
                int ID_UsuaComment = result.getInt("ID_Usuario");
                String Comment_Content = result.getString("Content");
                int ID_Respo = result.getInt("id_Respo");
                 String Dia_Com = result.getString("Dia");
                return new Comentarios(ID_Comment, ID_NotiComment, ID_UsuaComment, Comment_Content, ID_Respo, Dia_Com);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ComentariosDao.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }

}
