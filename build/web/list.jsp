<%-- 
    Document   : list
    Created on : Nov 5, 2024, 10:17:32 AM
    Author     : LENOVO
--%>

<%-- 
    Document   : list
    Created on : Nov 5, 2024, 5:22:55 AM
    Author     : LENOVO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<center>
    <h1>List Application!</h1>
    <table border="1px" width="80%">
        <tr>
            <th>ID</th>
            <th>Agency Handling</th>
            <th>Attach Document</th>
            <th>Timestamp</th>
            <th>Sender</th>
            <th>MOE ID</th>
            <th>U ID</th>
        </tr>
        <c:forEach items="${requestScope.data}" var="c">
            <tr>
                <td>${c.AId}</td>
                <td>${c.Agency_handling}</td>
                <td>${c.Attach_document}</td>
                <td>${c.Timestamp}</td>
                <td>${c.Sender}</td>
                <td>${c.MOEId}</td>
                <td>${c.UId}</td>
            </tr>
        </c:forEach>
    </table>
</center>
</body>
</html>

