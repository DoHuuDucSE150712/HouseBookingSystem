<%-- 
    Document   : login
    Created on : Sep 26, 2022, 1:11:36 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String mess ="";
        if (request.getAttribute("mess") !=null) {
                mess =request.getAttribute("mess").toString();
            }
        %>
        <h1>Login</h1>
        <form action="mainController" method="post" class="formlogin">
            <table border="1">
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username" placeholder="Input your username"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" placeholder="Input your password"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Login" name="action"></td>
                </tr>
            </table>
        </form>
        <p style="color: red" ><%=mess %> </p>
    </body>
</html>
