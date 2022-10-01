<%-- 
    Document   : AddHouse
    Created on : Oct 1, 2022, 1:00:49 AM
    Author     : Admin
--%>

<%@page import="Model.House"%>
<%@page import="Model.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Location"%>
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
        List<Location> llist = new ArrayList<Location>();
            if (request.getAttribute("llist") != null) {
                llist = (List<Location>) request.getAttribute("llist");
            }
            List<Menu> mlist = new ArrayList<Menu>();
            if (request.getAttribute("mlist") != null) {
                mlist = (List<Menu>) request.getAttribute("mlist");
            }
        House h = new House();
            if (request.getAttribute("house") != null) {
                h = (House) request.getAttribute("house");
            }
        %>
        <form action="AddHouseServlet" method="post">
            <table>
                <tr>
                    <td>Post Date</td>
                    <td><input type="date" name="postdate" required=""></td>
                </tr>
                <tr>
                    <td>House Name</td>
                    <td><input type="text" name="housename" required=""></td>
                </tr>
                <tr>
                    <td>Review</td>
                    <td><input type="text" name="review" ></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="number" name="houseprice" required="" ></td>
                </tr>
                <tr>
                    <td><input type="text" name="status" hidden="true"></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="address" required=""></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td><input type="text" name="description" ></td>
                </tr>
                <tr>
                    <td>Location</td>
                    <td>
                        <select name="location">
                <%
                for(Location l : llist){
                    %>
                    <option value="<%=l.getId() %>" ><%=l.getName() %></option>
                    <%
                }
                %>
            </select>
                    </td>
                </tr>
                <tr>
                    <td>Menu</td>
                    <td>
                        <select name="menu">
                <%
                for(Menu m : mlist){
                    %>
                    <option value="<%=m.getId() %>" ><%=m.getName() %></option>
                    <%
                }
                %>
            </select>
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="Add"></td>
                </tr>
            </table>
        </form>
    </body>
</html>