<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="mostra.jsp">
            <label>User
                <input type="text" name="usr">
            </label>
            <br>
            <label>Password
                <input type="password" name="pwd">
            </label>
            <br>
            <label>Submit
                <input type="submit" value="submit">
            </label>
        </form>
        
        Sessione attiva: <%= session.getAttribute("usr") %>


    </body>
</html>
