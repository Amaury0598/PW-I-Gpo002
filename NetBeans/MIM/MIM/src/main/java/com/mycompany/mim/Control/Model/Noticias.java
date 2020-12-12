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
public class Noticias {

    private int Noti_id;
    private int Usu_id;
    private String N_Title;
    private String N_Descsr;
    private String N_Content;
    private int N_Status;
    private int Calif;
    private String Coment_Recha;
    private String Img_1;
    private String Img_2;
    private String Img_3;
    private String Cate;
    private String Vid_1;

    public Noticias(int Noti_id, int Calif) {
        this.Noti_id = Noti_id;
        this.Calif = Calif;
    }
    
    public Noticias(int Noti_id, int N_Status, String Coment_Recha) {
        this.Noti_id = Noti_id;
        this.N_Status = N_Status;
        this.Coment_Recha = Coment_Recha;
    }    
    
    public Noticias(int Noti_id, int Usu_id, String N_Title, String N_Descsr, String N_Content) {
        this.Noti_id = Noti_id;
        this.Usu_id = Usu_id;
        this.N_Title = N_Title;
        this.N_Descsr = N_Descsr;
        this.N_Content = N_Content;
    }

    public Noticias(int Noti_id, int Usu_id, String N_Title, String N_Descsr, String N_Content, int N_Status) {
        this.Noti_id = Noti_id;
        this.Usu_id = Usu_id;
        this.N_Title = N_Title;
        this.N_Descsr = N_Descsr;
        this.N_Content = N_Content;
        this.N_Status = N_Status;
    }

    public Noticias(int Usu_id, String N_Title, String N_Descsr, String N_Content) {
        this.Usu_id = Usu_id;
        this.N_Title = N_Title;
        this.N_Descsr = N_Descsr;
        this.N_Content = N_Content;
    }

    public Noticias(int Noti_id, int Usu_id, String N_Title, String N_Descsr, String N_Content, String Img_1, String Cate, int N_Status, int Calif) {
        this.Noti_id = Noti_id;
        this.Usu_id = Usu_id;
        this.N_Title = N_Title;
        this.N_Descsr = N_Descsr;
        this.N_Content = N_Content;
        this.Img_1 = Img_1;
        this.Cate = Cate;
        this.N_Status = N_Status;
        this.Calif = Calif;
    }

    public Noticias(int Noti_id, int Usu_id, String N_Title, String N_Descsr, String N_Content, String Img_1, String Img_2, String Img_3, String Cate, String Vid_1) {
        this.Noti_id = Noti_id;
        this.Usu_id = Usu_id;
        this.N_Title = N_Title;
        this.N_Descsr = N_Descsr;
        this.N_Content = N_Content;
        this.Img_1 = Img_1;
        this.Img_2 = Img_2;
        this.Img_3 = Img_3;
        this.Cate = Cate;
        this.Vid_1 = Vid_1;
    }
    
    public Noticias(int Noti_id, int Usu_id, String N_Title, String N_Descsr, String N_Content, int N_Status, int Calif, String Coment_Recha, String Img_1, String Img_2, String Img_3, String Cate, String Vid_1) {
        this.Noti_id = Noti_id;
        this.Usu_id = Usu_id;
        this.N_Title = N_Title;
        this.N_Descsr = N_Descsr;
        this.N_Content = N_Content;
        this.N_Status = N_Status;
        this.Calif = Calif;
        this.Coment_Recha = Coment_Recha;
        this.Img_1 = Img_1;
        this.Img_2 = Img_2;
        this.Img_3 = Img_3;
        this.Cate = Cate;
        this.Vid_1 = Vid_1;
    }
    
    public void setCalif(int Calif) {
        this.Calif = Calif;
    }

    public int getCalif() {
        return Calif;
    }

    public void setImg_1(String Img_1) {
        this.Img_1 = Img_1;
    }

    public void setImg_2(String Img_2) {
        this.Img_2 = Img_2;
    }

    public void setImg_3(String Img_3) {
        this.Img_3 = Img_3;
    }

    public void setCate(String Cate) {
        this.Cate = Cate;
    }

    public void setVid_1(String Vid_1) {
        this.Vid_1 = Vid_1;
    }

    public String getImg_1() {
        return Img_1;
    }

    public String getImg_2() {
        return Img_2;
    }

    public String getImg_3() {
        return Img_3;
    }

    public String getCate() {
        return Cate;
    }

    public String getVid_1() {
        return Vid_1;
    }

    public void setComent_Recha(String Coment_Recha) {
        this.Coment_Recha = Coment_Recha;
    }

    public String getComent_Recha() {
        return Coment_Recha;
    }

    public int getNoti_id() {
        return Noti_id;
    }

    public Noticias(int Noti_id) {
        this.Noti_id = Noti_id;
    }

    public String getN_Title() {
        return N_Title;
    }

    public String getN_Descsr() {
        return N_Descsr;
    }

    public String getN_Content() {
        return N_Content;
    }

    public void setUsu_id(int Usu_id) {
        this.Usu_id = Usu_id;
    }

    public void setN_Status(int N_Status) {
        this.N_Status = N_Status;
    }

    public int getN_Status() {
        return N_Status;
    }

    public int getUsu_id() {
        return Usu_id;
    }

    public void setNoti_id(int Noti_id) {
        this.Noti_id = Noti_id;
    }

    public void setN_Title(String N_Title) {
        this.N_Title = N_Title;
    }

    public void setN_Descsr(String N_Descsr) {
        this.N_Descsr = N_Descsr;
    }

    public void setN_Content(String N_Content) {
        this.N_Content = N_Content;
    }

}
