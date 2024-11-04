/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import Models.Feedback;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
@WebServlet(name = "FeedbackController", urlPatterns = {"/feedback"})
public class FeedbackController extends HttpServlet {

    // In-memory list to store feedback entries
    private static final List<Feedback> feedbackList = new ArrayList<>();
    
    @Override
    public void init() throws ServletException {
        // Add some initial feedback data
        feedbackList.add(new Feedback(1, "Great service!", new Date(System.currentTimeMillis() - 172800000), "Reviewed", 1));
        feedbackList.add(new Feedback(2, "Loved the experience!", new Date(System.currentTimeMillis() - 86400000), "Reviewed", 2));
        feedbackList.add(new Feedback(3, "Could be improved.", new Date(System.currentTimeMillis() - 10800000), "Pending", 3));
        feedbackList.add(new Feedback(4, "Fantastic!", new Date(System.currentTimeMillis() - 43200000), "Reviewed", 1));
        feedbackList.add(new Feedback(5, "Not satisfactory.", new Date(System.currentTimeMillis() - 3600000), "Pending", 4));
        feedbackList.add(new Feedback(6, "Excellent food!", new Date(System.currentTimeMillis() - 86400000), "Reviewed", 2));
        feedbackList.add(new Feedback(7, "Will come again.", new Date(System.currentTimeMillis() - 21600000), "Reviewed", 5));
        feedbackList.add(new Feedback(8, "Too noisy.", new Date(System.currentTimeMillis() - 5400000), "Pending", 3));
        feedbackList.add(new Feedback(9, "Very friendly staff.", new Date(System.currentTimeMillis() - 86400000), "Reviewed", 1));
        feedbackList.add(new Feedback(10, "Loved the ambiance.", new Date(System.currentTimeMillis() - 43200000), "Reviewed", 2));
        feedbackList.add(new Feedback(11, "Average experience.", new Date(System.currentTimeMillis() - 600000), "Pending", 6));
        feedbackList.add(new Feedback(12, "Will recommend to friends.", new Date(System.currentTimeMillis() - 86400000), "Reviewed", 1));
        feedbackList.add(new Feedback(13, "Food was cold.", new Date(System.currentTimeMillis() - 3600000), "Pending", 4));
        feedbackList.add(new Feedback(14, "Great for families!", new Date(System.currentTimeMillis() - 172800000), "Reviewed", 5));
        feedbackList.add(new Feedback(15, "Not worth the price.", new Date(System.currentTimeMillis() - 43200000), "Pending", 2));
        feedbackList.add(new Feedback(16, "Exceptional service!", new Date(System.currentTimeMillis() - 21600000), "Reviewed", 3));
        feedbackList.add(new Feedback(17, "Delicious desserts.", new Date(System.currentTimeMillis() - 86400000), "Reviewed", 1));
        feedbackList.add(new Feedback(18, "Will visit again!", new Date(System.currentTimeMillis() - 5400000), "Reviewed", 6));
        feedbackList.add(new Feedback(19, "Too spicy for my taste.", new Date(System.currentTimeMillis() - 3600000), "Pending", 2));
        feedbackList.add(new Feedback(20, "Excellent value for money.", new Date(System.currentTimeMillis() - 86400000), "Reviewed", 5));
        feedbackList.add(new Feedback(21, "Poor cleanliness.", new Date(System.currentTimeMillis() - 600000), "Pending", 4));
        feedbackList.add(new Feedback(22, "Nice outdoor seating.", new Date(System.currentTimeMillis() - 43200000), "Reviewed", 3));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Set feedback list as request attribute
        request.setAttribute("feedbackList", feedbackList);
        
        // Forward request to feedback.jsp to display the list
        request.getRequestDispatcher("feedback.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String content = request.getParameter("content");
        int uid = Integer.parseInt(request.getParameter("uid"));
        
        
        
        // Set updated feedback list as request attribute
        request.setAttribute("feedbackList", feedbackList);
        
        // Forward request to feedback.jsp to display updated list
        request.getRequestDispatcher("feedback.jsp").forward(request, response);
    }

}
