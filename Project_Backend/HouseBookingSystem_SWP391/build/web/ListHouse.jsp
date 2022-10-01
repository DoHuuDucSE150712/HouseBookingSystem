<%-- 
    Document   : ListHouse
    Created on : Sep 30, 2022, 11:44:25 PM
    Author     : Admin
--%>

<%@page import="Model.House"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        List<House> list = new ArrayList<House>();
        if(request.getAttribute("HouseList") != null){
            list = (List<House>) request.getAttribute("HouseList");
        }
        %>
        <h1>Manage House</h1>
        <form action="mainController" method="get">
            Name : <input type="text" name="name" >
            <input type="submit" value="search" name="action">
        </form>
        <br>
        <a href="NextAddHouseServlet"><button>Add House</button></a>
        <table border="1">
            <tr>
                <th>House_ID</th>
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
            <%
                for(House h : list){
                %>
                <tr>
                    <td><%=h.getHouseid() %></td>
                    <td><%=h.getHousename() %></td>
                    <td><%=h.getPostdate() %></td>
                    <td><%=h.getReview() %></td>
                    <td><%=h.getHouseprice() %></td>
                    <td><%=h.getStatus() %></td>
                    <td><%=h.getAddress() %></td>
                    <td><%=h.getDescription() %></td>
                    <td><%=h.getLocation().getId() %></td>
                    <td><%=h.getMenu().getId() %></td>
                    <td><a href="NextEditHouseServlet?id=<%=h.getHouseid() %>"><button>Update</button></a></td>
                    <td><a href="DeleteHouseServlet?id=<%=h.getHouseid() %>"><button>Delete</button></a></td>
                </tr>
                <%
                }
                %>
        </table>
    </body>
</html>
