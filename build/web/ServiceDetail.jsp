<%-- 
    Document   : ServiceDetail
    Created on : Oct 31, 2024, 7:49:40 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>  
<!DOCTYPE html>  
<!DOCTYPE html>  
<html lang="vi">  
<head>  
    <meta charset="UTF-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  
    <title>Trang cho công dân</title>  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">  
    <style>  
        body {  
            font-family: Arial, sans-serif;  
            background-color: #f9f9f9;  
            margin: 0;  
            padding: 20px;  
        }  
        header {  
            background-color: #f2c94c;  
            padding: 10px;  
            text-align: center;  
        }  
        .navbar {  
            background-color: #d95f0e;  
            padding: 10px;  
            display: flex;  
            justify-content: space-between;  
            align-items: center;  
        }  
        .navbar h1 {  
            color: white;  
            margin: 0;  
        }  
        .navbar a {  
            color: white;  
            text-decoration: none;  
            padding: 10px 15px;  
        }  
        .navbar a:hover {  
            background-color: #c95e0d;  
        }  
        .search-bar {  
            margin: 20px 0;  
            text-align: center;  
        }  
        .search-bar input {  
            padding: 10px;  
            width: 300px;  
        }  
        .section {  
            background-color: #fff;  
            padding: 20px;  
            border-radius: 5px;  
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);  
            margin-bottom: 20px;  
        }  
        .section h2 {  
            margin-top: 0;  
            color: #f2c94c;  
        }  
        .section ul {  
            list-style-type: none;  
            padding: 0;  
        }  
        .section li {  
            padding: 10px 0;  
            border-bottom: 1px solid #ddd;  
            cursor: pointer;  
        }  
        .section li:hover {  
            background-color: #f2f2f2;  
        }  
        .button {  
            background-color: #f2c94c;  
            border: none;  
            padding: 10px 15px;  
            cursor: pointer;  
            border-radius: 5px;  
            display: block;  
            margin: 20px auto;  
        }  
        .faq {  
            margin-top: 20px;  
        }  
        .faq h3 {  
            cursor: pointer;  
            color: #007bff;  
        }  
        .faq-content {  
            display: none;  
            margin-top: 10px;  
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

    </style>  
</head>  
<body>  

<header>
    <div class="header-top">
        <div class="header-title">
            <h1>Cổng Dịch Vụ Công Quốc Gia</h1>
            <p>Kết nối, cung cấp thông tin và dịch vụ công mọi lúc, mọi nơi</p>
        </div>
    </div>
</header>

<nav class="navbar">  
    <a href="#">Giới thiệu</a>  
    <a href="#">Thông tin và dịch vụ</a>  
    <a href="#">Thanh toán trực tuyến</a>  
    <a href="#">Phản ánh kiến nghị</a>  
    <a href="#">Thủ tục hành chính</a>  
    <a href="#">Hỗ trợ</a>  
</nav>  

<div class="section"> 
    <%
    
    %>
    <h2>Học tập</h2>  
    <p>Cung cấp thông tin thủ tục hành chính, dịch vụ công trực tuyến liên quan đến việc học tập của cá nhân từ mầm non đến sau đại học.</p>  
    <ul>  
        <li onclick="toggleDetails(1)">Học tập ở nước ngoài bằng ngân sách nhà nước</li>  
        <li onclick="toggleDetails(2)">Cấp văn bằng, chứng chỉ; công nhận văn bằng, chứng chỉ do cơ sở nước ngoài cấp</li>  
        <li onclick="toggleDetails(3)">Học bổng và chính sách hỗ trợ</li>  
        <li onclick="toggleDetails(4)">Chuyển trường</li>  
        <li onclick="toggleDetails(5)">Tuyển sinh</li>  
    </ul>  
    <button class="button">Xem tất cả các thủ tục hành chính</button>  
</div>  

<div class="faq">  
    <h2>Câu hỏi thường gặp</h2>  
    <h3 onclick="toggleFAQ(1)">Cách thực hiện đối với học sinh trung học cơ sở các dân tộc thiểu số rất ít người như thế nào?</h3>  
    <div class="faq-content" id="faq1">  
        <p>Thông tin chi tiết về cách thực hiện sẽ được cung cấp tại đây.</p>  
    </div>  
    <h3 onclick="toggleFAQ(2)">Tôi muốn hỏi về việc tiếp nhận lưu học sinh về nước, có thời hạn giải quyết như thế nào?</h3>  
    <div class="faq-content" id="faq2">  
        <p>Thông tin chi tiết về thời hạn giải quyết sẽ được cung cấp tại đây.</p>  
    </div>  
    <h3 onclick="toggleFAQ(3)">Đối tượng thực hiện thủ tục học tập đối với các dân tộc thiểu số rất ít người như thế nào?</h3>  
    <div class="faq-content" id="faq3">  
        <p>Thông tin chi tiết về đối tượng thực hiện sẽ được cung cấp tại đây.</p>  
    </div>  
    <button class="button" onclick="toggleMore()">Xem thêm</button>  
</div>  

<script>  
    function toggleFAQ(id) {  
        const content = document.getElementById(`faq${id}`);  
        content.style.display = content.style.display === "block" ? "none" : "block";  
    }  

    function toggleDetails(id) {  
        alert("Thông tin chi tiết cho mục " + id);  
    }  

    function toggleMore() {  
        alert("Thông tin thêm sẽ được cung cấp tại đây.");  
    }  
</script>  

</body>  
</html>
