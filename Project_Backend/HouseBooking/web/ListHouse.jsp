<%-- 
    Document   : ListHouse
    Created on : Sep 16, 2022, 3:24:13 PM
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
        <h1>Manage House</h1>
        <form action="#" method="get">
            Name : <input type="text" name="name" >
            <input type="submit" value="search">
        </form>
        <br>
        <table border = "1">
            <tr>
                <th>House_ID</th>
                <th>House_Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>House_Img</th>
                <th>Address</th>
                <th>District</th>
            </tr>
            <tr>
                <td>1</td>
                <td>Phu Quoc</td>
                <td>Xin</td>
                <td>100</td>
                <td>1</td>
                <td>Q9</td>
                <td>Le Van viet</td>
            </tr>
        </table>
        <a href="#" >Add new</a><br>
        <a href="#" >Edit</a><br>
        <a href="#" >Delete</a><br>
    </body>
</html>
