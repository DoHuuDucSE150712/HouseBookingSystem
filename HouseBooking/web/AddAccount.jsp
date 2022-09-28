<%-- 
    Document   : AddAccount
    Created on : Sep 27, 2022, 4:17:57 PM
    Author     : Admin
--%>

<%@page import="Model.Role"%>
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
        List<Role> list = new ArrayList<Role>();
            if (request.getAttribute("list") != null) {
                list = (List<Role>) request.getAttribute("list");
            }
        %>
        <h1>Add Account</h1>
        <form action="addaccount" method="post">
            <table>
                <tr>
                    <td>Full Name</td>
                    <td><input type="text" name="fullname" required=""></td>
                </tr>
                <tr>
                    <td>Account_Img</td>
                    <td><input type="text" name="userimg"></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username" required=""></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" required=""></td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td><input type="number" name="phone" required=""></td>
                </tr>
                <tr>
                    <td>Status</td>
                    <td><input type="number" name="status" required=""></td>
                </tr>
                <tr>
                    <td>Role</td>
                    <td>
                        <section name="role">
                            <%
                            for(Role r : list){
                            %>    
                            <option value="<%=r.getId() %>"><%=r.getName() %></option>
                            <%
                            }
                            %>
                        </section>
                    </td>
                <tr>
                    <td><<input type="text" name="token" hidden="true">/td>
                </tr>
                <tr>
                    <td><input type="submit" value="Add"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
