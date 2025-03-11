<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Objects"%>
<%@ page import="../java/Contatore" %>
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
            Contatore.incrementa();
        %>

        <p>Login effettuato <%= Contatore.getContatore() %> volte</p>

        <!-- mostra l'utente corrente -->
        <% session.setAttribute("usr", request.getParameter("usr")); %>
        Sessione attiva: <%= session.getAttribute("usr") %>

        <form action="logout.jsp">
            <input type="submit" name="logout" value="Logout">
        </form>
        <%
            }else{
        %>
            <p>Credenziali non corrette</p>
        <% } %>


        
    </p>
    
</body>
</html>