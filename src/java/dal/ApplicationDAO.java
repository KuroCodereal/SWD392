/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Application;

/**
 *
 * @author LENOVO
 */
public class ApplicationDAO extends DBContext {
    public List<Application> getAll() {
        List<Application> list = new ArrayList<>();
        String sql = "SELECT * FROM Application";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Application a = new Application(
                    rs.getInt("AId"),
                    rs.getString("Agency_handling"),
                    rs.getString("Attach_document"),
                    rs.getTimestamp("Timestamp"), // Sử dụng rs.getTimestamp để lấy kiểu Timestamp
                    rs.getString("Sender"),
                    rs.getInt("MOEId"),
                    rs.getInt("UId")
                );
                list.add(a); // Đừng quên thêm đối tượng vào danh sách
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Nên log lỗi để biết nguyên nhân chính xác
        }
        return list;
    }
    
    public static void main(String[] args){
        ApplicationDAO a = new ApplicationDAO();
        List<Application> list = a.getAll();
        System.out.println(list.get(0).getAId());
    }
}

