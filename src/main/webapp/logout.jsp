<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
</head>
<body>

    
    
    <%
    if(request.getParameter("logout") != null ){  
        //session.invalidate();
        session.removeAttribute("usr");
    }
    response.sendRedirect("login.jsp");
    %>
    
</body>
</html>