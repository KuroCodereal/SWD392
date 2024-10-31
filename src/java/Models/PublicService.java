/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import org.apache.jasper.tagplugins.jstl.core.ForEach;

/**
 *
 * @author User
 */
public class PublicService implements IPublicService{
    private int MOEId;
    private String Servicename;
    private String Servicedescription; 
    double Servicefee;
    public PublicService(){
        
    }
    public PublicService(int MOEId, String Servicename, String Servicedescription, double Servicefee){
        this.MOEId = MOEId;
        this.Servicename = Servicename;
        this.Servicedescription = Servicedescription;
        this.Servicefee = Servicefee;
    }
    
    @Override
    public List<PublicService> SearchPublicService(String keyword) {
        List<PublicService> list = new LinkedList<>();
        String sql = "SELECT *\n" + "FROM Public_service\n" + "WHERE [Service_name] LIKE N'%" + keyword + "%'";
        try {
            DBContext dao = new DBContext();
            PreparedStatement st = dao.connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                PublicService p = new PublicService(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4));
                list.add(p);
            }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    
    public static void main(String[] args) {
        PublicService dao = new PublicService();
        List<PublicService> list = dao.SearchPublicService("Hôn");
        for(int i = 0; i < list.size(); i++){
            System.out.println(list.get(i).Servicename);
        }
    }
}



class DBContext {
    protected Connection connection;
    public DBContext(){
        try {
            String url = "jdbc:sqlserver://localhost:1433;databaseName=SWD392";
        String username = "sa";
        String password = "1102003hoan";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        connection = DriverManager.getConnection(url,username,password);
        }
        catch(ClassNotFoundException | SQLException ex){
            System.out.println(ex);
        }
    }
    
}