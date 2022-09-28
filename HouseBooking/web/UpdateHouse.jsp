<%-- 
    Document   : UpdateHouse
    Created on : Sep 27, 2022, 7:28:21 AM
    Author     : Admin
--%>

<%@page import="Model.Location"%>
<%@page import="Model.House"%>
<%@page import="Model.TypeHouse"%>
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
            List<TypeHouse> tlist = new ArrayList<TypeHouse>();
            if (request.getAttribute("tlist") != null) {
                tlist = (List<TypeHouse>) request.getAttribute("tlist");
            }
            List<Location> llist = new ArrayList<Location>();
            if (request.getAttribute("llist") != null) {
                llist = (List<Location>) request.getAttribute("llist");
            }
            House h = new House();
            if (request.getAttribute("house") != null) {
                h = (House) request.getAttribute("house");
            }
        %>
        <h1>Update House</h1>
        <form action="UpdateHouseServlet" method="post">
            <table>
                <tr>
                    <td><input type="text" name="houseid" value="<%=h.getHouseid() %>" hidden="true"></td>
                </tr>
                <tr>
                    <td>House Name</td>
                    <td><input type="text" name="housename" value="<%=h.getHousename() %>"></td>
                </tr>
                <tr>
                    <td><input type="date" name="postdate" value="<%=h.getPostdate() %>" hidden="true"></td>
                </tr>
                <tr>
                    <td><input type="text" name="status" value="<%=h.getStatus() %>" hidden="true"></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="number" name="price" value="<%=h.getPrice() %>"></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="address" value="<%=h.getAddress() %>"></td>
                </tr>
                <tr>
                    <td>Type House</td>
                    <td>
                        <section name="type">
                            <%
                            for(TypeHouse t : tlist){
                            %>    
                            <option value="<%=t.getId() %>"><%=t.getName() %></option>
                            <%
                            }
                            %>
                        </section>
                    </td>
                </tr>
                <tr>
                    <td>Location</td>
                    <td>
                        <section name="location">
                            <%
                            for(Location l : llist){
                            %>    
                            <option value="<%=l.getId() %>"><%=l.getName() %></option>
                            <%
                            }
                            %>
                        </section>
                    </td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td><input type="text" name="description" value="<%=h.getDescription() %>"></td>
                </tr>
                <tr>
                    <td>Review</td>
                    <td><input type="text" name="review" value="<%=h.getReview() %>"></td>
                </tr>
                <tr>
                    <td>House IMG</td>
                    <td><input type="text" name="houseimg" value="<%=h.getHouse_img() %>"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Edit"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
