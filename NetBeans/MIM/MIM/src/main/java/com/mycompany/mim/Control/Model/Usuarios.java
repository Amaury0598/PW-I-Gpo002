package com.mycompany.mim.Control.Model;

/**
 *
 * @author amg05
 */
public class Usuarios {

    private int id;
    private String NEmail;
    private String NUser;
    private String NPassword;
    private String NImague;
    private String NDescr;
    private int Puesto;

    public Usuarios() {
    }

    public Usuarios(String NEmail, String NPassword) {
        this.NEmail = NEmail;
        this.NPassword = NPassword;
    }

    public Usuarios(String NEmail, String NUser, String NPassword) {
        this.NEmail = NEmail;
        this.NUser = NUser;
        this.NPassword = NPassword;
    }

    public Usuarios(int id, String NEmail, String NUser, String NDescr) {
        this.id = id;
        this.NEmail = NEmail;
        this.NUser = NUser;
        this.NDescr = NDescr;
    }

    public Usuarios(int id, String NUser, String NPassword, String NImague, String NDescr) {
        this.id = id;
        this.NUser = NUser;
        this.NPassword = NPassword;
        this.NImague = NImague;
        this.NDescr = NDescr;
    }


    public Usuarios(int id, String NEmail, String NUser, String NPassword, String NDescr, int Puesto) {
        this.id = id;
        this.NEmail = NEmail;
        this.NUser = NUser;
        this.NPassword = NPassword;
        this.NDescr = NDescr;
        this.Puesto = Puesto;
    }

    public Usuarios(int id, String NEmail, String NUser, String NPassword, String NImague, String NDescr, int Puesto) {
        this.id = id;
        this.NEmail = NEmail;
        this.NUser = NUser;
        this.NPassword = NPassword;
        this.NImague = NImague;
        this.NDescr = NDescr;
        this.Puesto = Puesto;
    }
    
    public Usuarios(int id, String NUser, String NPassword) {
        this.id = id;
        this.NUser = NUser;
        this.NPassword = NPassword;
    }

    public int getPuesto() {
        return Puesto;
    }

    public void setPuesto(int Puesto) {
        this.Puesto = Puesto;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNImague(String NImague) {
        this.NImague = NImague;
    }

    public String getNImague() {
        return NImague;
    }

    public String getNEmail() {
        return NEmail;
    }

    public void setNEmail(String NEmail) {
        this.NEmail = NEmail;
    }

    public String getNUser() {
        return NUser;
    }

    public void setNUser(String NUser) {
        this.NUser = NUser;
    }

    public String getNPassword() {
        return NPassword;
    }

    public void setNDescr(String NDescr) {
        this.NDescr = NDescr;
    }

    public String getNDescr() {
        return NDescr;
    }

    public void setNPassword(String NPassword) {
        this.NPassword = NPassword;
    }
}
