/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 *
 * @author User
 */
@WebServlet(name="SearchServlet", urlPatterns={"/SearchServlet"})
public class SearchServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SearchServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        //processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy từ khóa tìm kiếm từ client
        String keyword = request.getParameter("keyword");
        
        // Tạo một danh sách các thủ tục hành chính
        List<String> items = Arrays.asList(
            "Học tập ở nước ngoài bằng ngân sách nhà nước",
            "Cấp văn bằng, chứng chỉ; công nhận văn bằng, chứng chỉ do cơ sở nước ngoài cấp",
            "Học bổng và chính sách hỗ trợ",
            "Chuyển trường",
            "Tuyển sinh",
            "Đào tạo nâng cao trình độ chuyên môn",
            "Hỗ trợ du học sinh về nước",
            "Thẩm định chương trình đào tạo",
            "Thẩm định và công nhận giáo viên nước ngoài",
            "Điều kiện học sinh đạt chuẩn vào trường công lập",
            "Đánh giá và kiểm định chất lượng giáo dục",
            "Quy trình tuyển sinh và nhập học",
            "Điều kiện chuyển tiếp học sinh giữa các cơ sở đào tạo",
            "Xét tuyển sinh viên vào các chương trình đào tạo quốc tế",
            "Hỗ trợ chi phí học tập cho gia đình khó khăn",
            "Hỗ trợ học sinh khuyết tật",
            "Quy định về học phí và các khoản đóng góp",
            "Xét duyệt tài trợ cho các chương trình nghiên cứu",
            "Chính sách miễn giảm học phí",
            "Quy trình bảo lưu kết quả học tập"
        );

        // Tạo danh sách các mục phù hợp với từ khóa
        List<String> filteredItems = new ArrayList<>();
        for (String item : items) {
            if (item.toLowerCase().contains(keyword.toLowerCase())) {
                filteredItems.add(item);
            }
        }

        // Chuyển kết quả tìm kiếm sang dạng JSON để trả về cho client
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(filteredItems));
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
