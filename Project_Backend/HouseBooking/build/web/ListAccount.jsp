<%-- 
    Document   : ListAccount
    Created on : Sep 16, 2022, 3:24:04 PM
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
        <header>
            <%@include file="header.jsp"  %>
        </header>
        <h1>Manage Account</h1>
        <form action="#" method="get">
            Name : <input type="text" name="name" >
            <input type="submit" value="search">
        </form>
        <br>
        <table border = "1">
            <tr>
                <th>User_ID</th>
                <th>Full Name</th>
                <th>Avatar</th>
                <th>Phone</th>
                <th>Email</th>
            </tr>
            <tr>
                <td>1</td>
                <td>Duc</td>
                <td>Day la avatar</td>
                <td>099999999</td>
                <td>duc@gmail.com</td>
            </tr>
            <tr>
                <td>2</td>
                <td>Trung</td>
                <td>Day la avatar</td>
                <td>077799999</td>
                <td>Trung@gmail.com</td>
            </tr>
            <tr>
                <td>3</td>
                <td>Hy</td>
                <td>Day la avatar</td>
                <td>093232999</td>
                <td>hy@gmail.com</td>
            </tr>
            <tr>
                <td>4</td>
                <td>Nam</td>
                <td>Day la avatar</td>
                <td>0922229999</td>
                <td>nam@gmail.com</td>
            </tr>
            <tr>
                <td>1</td>
                <td>Kiet</td>
                <td>Day la avatar</td>
                <td>09111111</td>
                <td>kiet@gmail.com</td>
            </tr>
        </table>
        <a href="#" >Add new</a><br>
        <a href="#" >Edit</a><br>
        <a href="#" >Delete</a><br>
    </body>
</html>
