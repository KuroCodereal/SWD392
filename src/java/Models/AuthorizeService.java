/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import jakarta.servlet.http.HttpSession;

/**
 *
 * @author User
 */
public class AuthorizeService implements IAuthorizeSevice{

    public AuthorizeService(){
        
    }
    @Override
    public boolean requestAuthorization(String role) {
        return role.equals("Citizen");
    }
    
}
