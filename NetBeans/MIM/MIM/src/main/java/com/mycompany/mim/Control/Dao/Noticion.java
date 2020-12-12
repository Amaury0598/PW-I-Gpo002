/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mim.Control.Dao;

import com.mycompany.mim.Control.Model.Noticias;
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
public class Noticion {

    public static int SubirNoti(Noticias Noticia) {
        Connection con = null;
        try {
            con = DBConnect.getConnection();
            CallableStatement statement = con.prepareCall("call Subir_Noti(?,?,?,?,?,?,?,?,?,?);");
            statement.setInt(1, Noticia.getNoti_id());
            statement.setInt(2, Noticia.getUsu_id());
            statement.setString(3, Noticia.getN_Title());
            statement.setString(4, Noticia.getN_Descsr());
            statement.setString(5, Noticia.getN_Content());
            statement.setString(6, Noticia.getImg_1());
            statement.setString(7, Noticia.getImg_2());
            statement.setString(8, Noticia.getImg_3());
            statement.setString(9, Noticia.getCate());
            statement.setString(10, Noticia.getVid_1());
            return statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(Noticion.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }

    public static List<Noticias> getNotis() {
        List<Noticias> noticias = new ArrayList<>();
        Connection con = null;
        try {
            con = DBConnect.getConnection();
            String sql = "call Ver_Notis();";        //
            CallableStatement statement = con.prepareCall(sql);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                int Id_Noti = result.getInt(1);
                int Id_Usu = result.getInt(2);
                String Title_Noti = result.getString(3);
                String Descr_Noti = result.getString(4);
                String Content_Noti = result.getString(5);
                String Img = result.getString(6);
                String Img2 = result.getString(7);
                String Img3 = result.getString(8);
                String Cate = result.getString(9);
                int Status = result.getInt(10);
                int Calif = result.getInt(11);
                String Vidi = result.getString(12);
                String Cometario_Rechazo = result.getString(13);
                noticias.add(new Noticias(Id_Noti, Id_Usu, Title_Noti, Descr_Noti, Content_Noti, Status, Calif, Cometario_Rechazo, Img, Img2, Img3, Cate, Vidi));
            }
            return noticias;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(Noticion.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return noticias;
    }

    public static Noticias VerNoti(Noticias vernoticia) {
        Connection con = null;
        try {
            con = DBConnect.getConnection();
            CallableStatement statement = con.prepareCall("call VerUnaNoti(?);");
            statement.setInt(1, vernoticia.getNoti_id());
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                int Id_Noti = result.getInt(1);
                int Id_Usu = result.getInt(2);
                String Title_Noti = result.getString("Titulo_Not");
                String Descr_Noti = result.getString("Desc_Not");
                String Content_Noti = result.getString("Content_Not");
                int Status = result.getInt("Aprobada_Not");
                int Votos = result.getInt("Votes_Not");
                String Vid = result.getString("Video_Not");
                String Comentario_Noti = result.getString("Coment_Not");
                String Img_1 = result.getString("IMG_1_Not");
                String Img_2 = result.getString("IMG_2_Not");
                String Img_3 = result.getString("IMG_3_Not");
                String Catego = result.getString("Categoría");

                return new Noticias(Id_Noti, Id_Usu, Title_Noti, Descr_Noti, Content_Noti, Status, Votos, Comentario_Noti, Img_1, Img_2, Img_3, Catego, Vid);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(Noticion.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }

    public static int RechazarNoti(Noticias vernoticia) {
        Connection con = null;
        try {
            con = DBConnect.getConnection();
            CallableStatement statement = con.prepareCall("call RechaNoti(?, ?, ?);");
            statement.setInt(1, vernoticia.getNoti_id());
            statement.setInt(2, vernoticia.getN_Status());
            statement.setString(3, vernoticia.getComent_Recha());
            return statement.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(Noticion.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }

    public static int AceptoNoti(Noticias vernoticia) {
        Connection con = null;
        try {
            con = DBConnect.getConnection();
            CallableStatement statement = con.prepareCall("call AceptoNoti(?);");
            statement.setInt(1, vernoticia.getNoti_id());
            return statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(Noticion.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }

    public static int Puntuacion(Noticias noticias) {
        Connection con = null;
        try {
            con = DBConnect.getConnection();
            CallableStatement statement = con.prepareCall("call Puntuacion(?,?);");
            statement.setInt(1, noticias.getNoti_id());
            statement.setInt(2, noticias.getCalif());
            return statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(Noticion.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }
    
        public static List<Noticias> GetBusqueda(String BusquedaNoti) {
        List<Noticias> BusqueNoti = new ArrayList<>();
        Connection con = null;
        try {
            con = DBConnect.getConnection();
             CallableStatement statement = con.prepareCall("call BuscarNoti(?);");       
            statement.setString(1, BusquedaNoti);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                int Id_NotiC = result.getInt(1);
                int Id_UsuC = result.getInt(2);
                String Title_NotiC = result.getString("Titulo_Not");
                String Descr_NotiC = result.getString("Desc_Not");
                String Content_NotiC = result.getString("Content_Not");
                int StatusC = result.getInt("Aprobada_Not");
                int VotosC = result.getInt("Votes_Not");
                String VidC = result.getString("Video_Not");
                String Comentario_NotiC = result.getString("Coment_Not");
                String Img_1C = result.getString("IMG_1_Not");
                String Img_2C = result.getString("IMG_2_Not");
                String Img_3C = result.getString("IMG_3_Not");
                String CategoC = result.getString("Categoría");
                BusqueNoti.add(new Noticias(Id_NotiC, Id_UsuC, Title_NotiC, Descr_NotiC, Content_NotiC, StatusC, VotosC, Comentario_NotiC, Img_1C, Img_2C, Img_3C, CategoC, VidC));
             }
            return BusqueNoti;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(Noticion.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return BusqueNoti;
    }
}
