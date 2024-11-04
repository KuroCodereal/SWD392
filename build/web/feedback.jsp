<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<!--    <head>
        <title>Feedback List</title>
         Bootstrap CSS 
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
         DataTables CSS 
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
    </head>-->
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dịch vụ công</title>
    <style>
        * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
}

body {
    background-color: #f7f7f7;
}

header {
    background-color: #ff9933;
    padding: 15px;
    text-align: center;
    color: white;
}

header h1 {
    font-size: 24px;
    margin-bottom: 10px;
}

header nav a {
    
    text-decoration: none;
    margin: 0 10px;
    font-weight: bold;
}

header nav a:hover {
    text-decoration: underline;
}

.container {
    width: 80%;
    margin: 20px auto;
    text-align: center;
}

.search-bar {
    display: flex;
    justify-content: center;
    margin-bottom: 20px;
}

.search-bar input[type="text"] {
    padding: 10px;
    font-size: 16px;
    width: 50%;
    border: 1px solid #ddd;
    border-radius: 5px 0 0 5px;
}

.search-bar button {
    padding: 10px 20px;
    font-size: 16px;
    border: none;
    background-color: #ff9933;
    color: white;
    border-radius: 0 5px 5px 0;
    cursor: pointer;
}

.search-bar button:hover {
    background-color: #e68a00;
}

.announcement {
    display: flex;
    justify-content: space-around;
    margin-bottom: 20px;
}

.announcement button {
    background-color: #ffcc66;
    color: #333;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    font-size: 14px;
    cursor: pointer;
    width: 30%;
    text-align: center;
    transition: background-color 0.3s;
}

.announcement button:hover {
    background-color: #ff9933;
    color: white;
}

.services {
    display: flex;
    justify-content: space-between;
    margin-bottom: 20px;
}

.service-section {
    width: 48%;
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 5px;
    padding: 20px;
    text-align: left;
}

.service-section h3 {
    text-align: center;
    color: #d9534f;
    font-size: 20px;
    margin-bottom: 15px;
}

.service-section ul {
    list-style-type: none;
    padding: 0;
}

.service-section button {
    background-color: #f0f0f0;
    border: 1px solid #ddd;
    padding: 10px;
    width: 100%;
    text-align: left;
    font-size: 16px;
    color: #333;
    margin-bottom: 10px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    display: flex;
    align-items: center;
}

.service-section button:hover {
    background-color: #d9d9d9;
}

.footer {
    background-color: #333;
    color: white;
    padding: 10px;
    text-align: center;
    font-size: 14px;
}

.footer p {
    margin: 10px 0;
}
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
}

header {
    border-bottom: 2px solid #ddd;
    padding-bottom: 10px;
}

.header-top {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 10px 20px;
}

.logo {
    width: 50px; /* Kích thước logo */
    height: auto;
}

.header-title {
    text-align: left;
}

.header-title h1 {
    font-size: 18px;
    color: #b71c1c; /* Màu đỏ cho tiêu đề */
    margin-bottom: 5px;
}

.header-title p {
    font-size: 12px;
    color: #555;
}

.auth-buttons button {
    background-color: white;
    border: 1px solid #b71c1c;
    color: #b71c1c;
    padding: 5px 15px;
    font-size: 14px;
    border-radius: 5px;
    cursor: pointer;
    margin-left: 10px;
}

.auth-buttons .login:hover {
    background-color: #b71c1c;
    color: white;
}

.auth-buttons .register:hover {
    background-color: #b71c1c;
    color: white;
}

nav {
    display: flex;
    justify-content: center;
    background-color: #f2f2f2;
    padding: 10px;
}

nav a {
    text-decoration: none;
    color: #333;
    font-weight: bold;
    margin: 0 15px;
}

nav a:hover {
    color: #b71c1c;
}


    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
         
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
</head>
    <body>
        <header>
    <div class="header-top">
        <img src="images/y-nghia-logo-fpt-lan-3.jpg" alt="Logo" class="logo">
        <div class="header-title">
            <h1>Cổng Dịch Vụ Công Quốc Gia</h1>
            <p>Kết nối, cung cấp thông tin và dịch vụ công mọi lúc, mọi nơi</p>
        </div>
        <div class="auth-buttons">
        </div>
    </div>
    <nav>
        <a href="#">Giới thiệu</a>
        <a href="#">Thông tin và dịch vụ</a>
        <a href="#">Thanh toán trực tuyến</a>
        <a href="#">Phản ánh kiến nghị</a>
        <a href="#">Thủ tục hành chính</a>
        <a href="#">Hỗ trợ</a>
    </nav>
</header>
        <div class="container mt-4">
            <h1 class="text-center">Feedback List</h1>

            <!-- Feedback Form -->
            <!--        <form action="feedback" method="POST" class="mb-4">
                        <div class="form-group">
                            <label for="content">Content:</label>
                            <input type="text" class="form-control" id="content" name="content" required>
                        </div>
                        <div class="form-group">
                            <label for="uid">User ID:</label>
                            <input type="number" class="form-control" id="uid" name="uid" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit Feedback</button>
                    </form>-->

            <!-- Feedback Table -->
            <table id="feedbackTable" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Content</th>
                        <th>Timestamp</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="feedback" items="${feedbackList}">
                        <tr>
                            <td>${feedback.fId}</td>
                            <td>${feedback.content}</td>
                            <td>${feedback.timestamp}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <!-- jQuery and Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
        <!-- DataTables JS -->
        <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>

        <!-- Initialize DataTables -->
        <script>
            $(document).ready(function () {
                $('#feedbackTable').DataTable();
            });
        </script>
    </body>
</html>

