<%-- 
    Document   : UpdateAccount
    Created on : Sep 30, 2022, 8:25:48 PM
    Author     : Admin
--%>

<%@page import="Model.Account"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.Role"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Account a = new Account();
            if (request.getAttribute("account") != null) {
                a = (Account) request.getAttribute("account");
            }
        %>
        <h1>Update Account</h1>
        <form action="EditAccountServlet" method="post">
            <table>
                <tr>
                    <td><input type="text" name="id" value="<%=a.getUserid() %>" hidden="true"></td>
                </tr>
                <tr>
                    <td>Full Name</td>
                    <td><input type="text" name="fullname" required="" value="<%=a.getFullname() %>"></td>
                </tr>
                <tr>
                    <td><input type="text" name="userimg" value="<%=a.getUserimg() %>" hidden="true"></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username" required="" value="<%=a.getUsername() %>"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" required="" value="<%=a.getPass() %>"></td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td><input type="text" name="phone" required="" value="<%=a.getPhone() %>"></td>
                </tr>
                <tr>
                    <td><input type="number" name="status" value="<%=a.getStatus() %>" hidden="true"></td>
                </tr>
                <tr>
                    <td><input type="text" name="role" value="<%=a.getRole().getId() %>" hidden="true"></td>
                <tr>
                    <td><input type="submit" value="Update"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
