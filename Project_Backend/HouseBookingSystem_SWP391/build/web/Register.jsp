<%-- 
    Document   : Register
    Created on : Oct 1, 2022, 1:35:40 AM
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
        <h1>Register</h1>
        <form action="AddAccountServlet" method="post">
            <table>
                <tr>
                    <td>Full Name</td>
                    <td><input type="text" name="fullname" required=""></td>
                </tr>
                <tr>
                    <td><input type="text" name="userimg" hidden="true"></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username" required=""></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" required=""></td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td><input type="number" name="phone" required=""></td>
                </tr>
                <tr>
                    <td><input type="number" name="status" hidden="true"></td>
                </tr>
                <tr>
                    <td><input type="text" name="role" hidden="true"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Sign Up"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
