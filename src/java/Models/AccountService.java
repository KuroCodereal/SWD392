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
    private String role;
    public AccountService(String username, String password, String role){
        this.username = username;
        this.password = password;
        this.role = role;
    }
    
    public String getRole(){
        return this.role;
    }
    public AccountService(){
        
    }
    public AccountService getAccount(String email, String pass){
        String sql = "SELECT *\n" + "FROM Users where email = '" + email +"'" + "and password = '" + pass +"'";
        try {
            DBContext dao = new DBContext();
            PreparedStatement st = dao.connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                AccountService p = new AccountService(rs.getString(2),rs.getString(3),rs.getString(8));
                return p;
            }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        return null;
    }
}
