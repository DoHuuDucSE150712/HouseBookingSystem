<%-- 
    Document   : ListHouse
    Created on : Sep 30, 2022, 11:44:25 PM
    Author     : Admin
--%>

<%@page import="Model.House"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="adminuser_style.css"/>
    </head>
    <body>
        
        <%
        List<House> list = new ArrayList<House>();
        if(request.getAttribute("HouseList") != null){
            list = (List<House>) request.getAttribute("HouseList");
        }
        %>
        <div class="header_fixed">
<!--       <h1>Manage House</h1>
        <form action="mainController" method="get">
            Name : <input type="text" name="name" >
            <input type="submit" value="search" name="action">
        </form>-->
       
        
        <c:import url="Header_LoginedAdmin.jsp"></c:import>
        <form action="SearchHouseServlet" class="search-bar-container"  method="post"  >
        <input style="height: 60px;font-size: 40px;" type="text" name="search" id="search-bar" placeholder="Search here..."">
        <button class="fas fa-search" style="height: 60px; font-size: 40px; background-color: #fff" value="search" type="submit"></button>
        </form>
            <table>
                <thead>
                    <tr>
                    <th>House_name</th>
                    <th>Post_Date</th>
                    <th>Review</th>
                    <th>Price</th>
                    <th>Status</th>
                    <th>Address</th>
                    <th>Description</th>
                    <th>Location</th>
                    <th>Menu</th>
                    </tr>
                </thead>
            <%
                for(House h : list){
                %>
                <tr>
                    <td><%=h.getHousename() %></td>
                    <td><%=h.getPostdate() %></td>
                    <td><%=h.getReview() %></td>
                    <td><%=h.getHouseprice() %></td>
                    <td><%=h.getStatus() %></td>
                    <td >
                        <span class="address">
                        <%=h.getAddress() %>
                        </span>
                    </td>
                    <td><%=h.getDescription() %></td>
                    <td><%=h.getLocation().getId() %></td>
                    <td><%=h.getMenu().getId() %></td>

                </tr>
                <%
                }
                %>
            </table>
            </div>
    </body>
</html>
