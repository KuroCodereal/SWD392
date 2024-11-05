/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

/**
 *
 * @author User
 */
public class AccountService {
    private String username;
    private String password;
    private int role;
    public AccountService(String username, String password, int role){
        this.username = username;
        this.password = password;
        this.role = role;
    }
    
    public int getRole(){
        return this.role;
    }
    public AccountService(){
        
    }
    
    @Override
    public String toString() {
        return "AccountService{username='" + username + "', password='" + password + "', role='" + role + "'}";
    }
    public AccountService getAccount(String email, String pass){
        String sql = "SELECT *\n" + "FROM Users where email = '" + email +"'" + "and password = '" + pass +"'";
        try {
            DBContext dao = new DBContext();
            PreparedStatement st = dao.connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                AccountService p = new AccountService(rs.getString(2),rs.getString(3),rs.getInt("RoleId"));
                return p;
            }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        return null;
    }
    
    
}
