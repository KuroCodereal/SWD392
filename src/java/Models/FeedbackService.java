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
 * @author admin
 */
public class FeedbackService {
    
    public Feedback getFeedback(int fId) {
    String sql = "SELECT * FROM Feedback WHERE fid = ?";
    try {
        DBContext dao = new DBContext();
        PreparedStatement st = dao.connection.prepareStatement(sql);
        
        // Set the parameter for fId
        st.setInt(1, fId);
        
        ResultSet rs = st.executeQuery();
        if (rs.next()) {
            // Assuming Feedback constructor takes arguments as defined in your Feedback model
            Feedback feedback = new Feedback(
                rs.getInt("fid"),
                rs.getString("content"),
                rs.getDate("timestamp"),
                rs.getString("status"),
                rs.getInt("uid")
            );
            return feedback;
        }
    } catch (SQLException e) {
        System.out.println("Error retrieving feedback: " + e.getMessage());
    }
    return null;
}
    
}
