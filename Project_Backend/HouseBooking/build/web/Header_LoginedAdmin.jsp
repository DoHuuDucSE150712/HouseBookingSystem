<%-- 
    Document   : Header_LoginedAdmin
    Created on : Sep 26, 2022, 2:04:06 PM
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
            <ul>
                <li><a href="Index.jsp">Home</a></li>
                <li><a href="AdminIndex.jsp">Admin</a></li>
                <li><a href="mainController?action=manageAccounts">Manage Accounts</a></li>
                <li><a href="mainController?action=manageOrders">Manage Orders</a></li>
                <li><a href="mainController?action=manageHouses">Manage Houses</a></li>
                <li><a href="mainController?action=manageCategories">Manage Type of House</a></li>
                <li>Welcome ${sessionScope.name} | <a href="logout">Logout</a></li>
            </ul>
        </header>
    </body>
</html>
