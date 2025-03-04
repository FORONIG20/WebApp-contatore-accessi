<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Objects"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <p>
        <%
            if(Objects.equals(request.getParameter("usr"), "admin") && Objects.equals(request.getParameter("pwd"), "admin")){
        %>
            <p>Login success!</p>
        <%
            }else{
        %>
            <p>Credenziali non corrette</p>
        <%}%>
    </p>
    
</body>
</html>