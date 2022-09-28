<%-- 
    Document   : AddHouse
    Created on : Sep 27, 2022, 8:39:31 AM
    Author     : Admin
--%>

<%@page import="Model.Location"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.TypeHouse"%>
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
        %>
        <h1>Add House</h1>
        <form action="addhouse" method="post">
            <table>
                <tr>
                    <td>House Name</td>
                    <td><input type="text" name="housename" required=""></td>
                </tr>
                <tr>
                    <td>Post Day</td>
                    <td><input type="date" name="postdate" required=""></td>
                </tr>
                <tr>
                    <td>Status</td>
                    <td><input type="text" name="status" ></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="number" name="price" required=""></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="address" required=""></td>
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
                    <td><input type="text" name="description" ></td>
                </tr>
                <tr>
                    <td><input type="text" name="review" hidden="true"></td>
                </tr>
                <tr>
                    <td>House IMG</td>
                    <td><input type="text" name="houseimg"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Add"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
