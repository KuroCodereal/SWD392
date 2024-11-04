<%-- 
    Document   : Login
    Created on : Oct 31, 2024, 8:05:05 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>  
<html lang="vi">  
<head>  
    <meta charset="UTF-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  
    <title>Đăng Nhập</title>  
    <style>  
        body {  
            font-family: Arial, sans-serif;  
            background-color: #f0f8ff; /* Màu nền nhẹ cho toàn bộ trang */  
            margin: 0;  
            padding: 0;  
            display: flex;  
            justify-content: center;  
            align-items: center;  
            height: 100vh;  
        }  
        .outer-container {  
            background-color: #e9ecef; /* Màu nền cho vùng xung quanh form */  
            padding: 30px;  
            border-radius: 10px;  
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);  
            width: auto;  
        }  
        .container {  
            width: 400px;  
            background: white;  
            padding: 20px;  
            border-radius: 8px;  
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);  
            text-align: center;  
        }  
        h1 {  
            color: #d9534f;  
        }  
        .input-group {  
            margin: 15px 0;  
        }  
        .input-group label {  
            display: block;  
            margin-bottom: 5px;  
        }  
        .input-group input {  
            width: 100%;  
            padding: 10px;  
            border: 1px solid #ccc;  
            border-radius: 4px;  
        }  
        .btn, .back-btn {  
            width: 100%;  
            padding: 10px;  
            background-color: #d9534f;  
            color: white;  
            border: none;  
            border-radius: 4px;  
            cursor: pointer;  
            margin-top: 10px;  
        }  
        .btn:hover, .back-btn:hover {  
            background-color: #c9302c;  
        }  
    </style>  
</head>  
<body>  

<div class="outer-container">  
    <form action="account" method="post" class="container">  
        <h1>Đăng Nhập</h1>  
        <div class="input-group">  
            <label for="username">Tên đăng nhập</label>  
            <input name="username" type="text" id="username" placeholder="Nhập tên đăng nhập">  
        </div>  
        <div class="input-group">  
            <label for="password">Mật khẩu</label>  
            <input name="pass" type="password" id="password" placeholder="Nhập mật khẩu">  
        </div>  
        <button type="submit" class="btn">Đăng Nhập</button>  
        <button class="back-btn" onclick="window.history.back();">Quay lại</button>  
    </form>  
</div>  

</body>  
</html>