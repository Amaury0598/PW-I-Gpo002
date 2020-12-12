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
public class Comentarios {

    private int ID_Comment;
    private int ID_Noticia_Comemnt;
    private int UD_Usuario_Comment;
    private String Content_Comment;
    private int id_Comment_2;
    private String Date;

    public Comentarios(int ID_Comment, int ID_Noticia_Comemnt, int UD_Usuario_Comment, String Content_Comment, int id_Comment_2) {
        this.ID_Comment = ID_Comment;
        this.ID_Noticia_Comemnt = ID_Noticia_Comemnt;
        this.UD_Usuario_Comment = UD_Usuario_Comment;
        this.Content_Comment = Content_Comment;
        this.id_Comment_2 = id_Comment_2;
    }

    public Comentarios(int ID_Comment, int ID_Noticia_Comemnt, int UD_Usuario_Comment, String Content_Comment) {
        this.ID_Comment = ID_Comment;
        this.ID_Noticia_Comemnt = ID_Noticia_Comemnt;
        this.UD_Usuario_Comment = UD_Usuario_Comment;
        this.Content_Comment = Content_Comment;
    }     

    public Comentarios(int ID_Noticia_Comemnt, int UD_Usuario_Comment, String Content_Comment) {
        this.ID_Noticia_Comemnt = ID_Noticia_Comemnt;
        this.UD_Usuario_Comment = UD_Usuario_Comment;
        this.Content_Comment = Content_Comment;
    }

    public Comentarios(int ID_Comment, int ID_Noticia_Comemnt, int UD_Usuario_Comment, String Content_Comment, int id_Comment_2, String Date) {
        this.ID_Comment = ID_Comment;
        this.ID_Noticia_Comemnt = ID_Noticia_Comemnt;
        this.UD_Usuario_Comment = UD_Usuario_Comment;
        this.Content_Comment = Content_Comment;
        this.id_Comment_2 = id_Comment_2;
        this.Date = Date;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String Date) {
        this.Date = Date;
    }
  
    public int getID_Comment() {
        return ID_Comment;
    }

    public int getID_Noticia_Comemnt() {
        return ID_Noticia_Comemnt;
    }

    public int getUD_Usuario_Comment() {
        return UD_Usuario_Comment;
    }

    public String getContent_Comment() {
        return Content_Comment;
    }

    public int getId_Comment_2() {
        return id_Comment_2;
    }

    public void setID_Comment(int ID_Comment) {
        this.ID_Comment = ID_Comment;
    }

    public void setID_Noticia_Comemnt(int ID_Noticia_Comemnt) {
        this.ID_Noticia_Comemnt = ID_Noticia_Comemnt;
    }

    public void setUD_Usuario_Comment(int UD_Usuario_Comment) {
        this.UD_Usuario_Comment = UD_Usuario_Comment;
    }

    public void setContent_Comment(String Content_Comment) {
        this.Content_Comment = Content_Comment;
    }

    public void setId_Comment_2(int id_Comment_2) {
        this.id_Comment_2 = id_Comment_2;
    }
}
