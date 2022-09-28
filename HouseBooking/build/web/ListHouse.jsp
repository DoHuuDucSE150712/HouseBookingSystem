<%-- 
    Document   : ListHouse
    Created on : Sep 26, 2022, 8:53:08 PM
    Author     : Admin
--%>

<%@page import="Model.House"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
        if(request.getAttribute("ListHouse") != null){
            list = (List<House>) request.getAttribute("ListHouse");
        }
        %>
        <h1>Manage House</h1>
        <form action="mainController" method="get">
            Name : <input type="text" name="name" >
            <input type="submit" value="search" name="action">
        </form>
        <br>
        <table border="1">
            <tr>
                <th>House_ID</th>
                <th>House_Name</th>
                <th>Post_Date</th>
                <th>Status</th>
                <th>Price</th>
                <th>Address</th>
                <th>Type House</th>
                <th>Location</th>
                <th>Description</th>
                <th>Review</th>
                <th>House_Img</th>
            </tr>
            <%
                for(House h : list){
                %>
                <tr>
                    <td><%=h.getHouseid() %></td>
                    <td><%=h.getHousename() %></td>
                    <td><%=h.getPostdate() %></td>
                    <td><%=h.getStatus() %></td>
                    <td><%=h.getPrice() %></td>
                    <td><%=h.getAddress() %></td>
                    <td><%=h.getType().getName() %></td>
                    <td><%=h.getLocation().getName() %></td>
                    <td><%=h.getDescription() %></td>
                    <td><%=h.getReview() %></td>
                    <td><img src="<%=h.getHouse_img() %>" class="product"/></td>
                    <td><a href="next-add"><button>Add House</button></a></td>
                    <td><a href="next-edit?id=<%=h.getHouseid() %>"><button>Update</button></a></td>
                    <td><a href="DeleteHouse?id=<%=h.getHouseid() %>"><button>Delete</button></a></td>
                </tr>
                <%
                }
                %>
        </table>
    </body>
</html>
