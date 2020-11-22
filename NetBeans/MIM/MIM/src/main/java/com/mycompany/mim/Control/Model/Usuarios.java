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

    public Usuarios() {
    }

    public Usuarios(int id, String NEmail) {
        this.id = id;
        this.NEmail = NEmail;
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

    public Usuarios(int id, String NEmail, String NUser, String NPassword) {
        this.id = id;
        this.NEmail = NEmail;
        this.NUser = NUser;
        this.NPassword = NPassword;
    }
      
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public void setNPassword(String NPassword) {
        this.NPassword = NPassword;
    }
}
