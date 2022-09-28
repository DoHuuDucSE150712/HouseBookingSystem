<%-- 
    Document   : UpdateAccount
    Created on : Sep 28, 2022, 7:22:48 AM
    Author     : Admin
--%>

<%@page import="Model.Account"%>
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
        Account a = new Account();
            if (request.getAttribute("account") != null) {
                a = (Account) request.getAttribute("account");
            }
        %>
        <h1>Add Account</h1>
        <form action="editaccount" method="post">
            <table>
                <tr>
                    <td><input type="text" name="id" required="" value="<%=a.getUserid() %>"></td>
                </tr>
                <tr>
                    <td>Full Name</td>
                    <td><input type="text" name="fullname" required="" value="<%=a.getFullname() %>"></td>
                </tr>
                <tr>
                    <td>Account_Img</td>
                    <td><input type="text" name="userimg" required="" value="<%=a.getUserimg() %>"></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username" required="" value="<%=a.getUsername() %>"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" required="" value="<%=a.getPass() %>"></td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td><input type="number" name="phone" required="" value="<%=a.getPhone() %>"></td>
                </tr>
                <tr>
                    <td>Status</td>
                    <td><input type="number" name="status" required="" value="<%=a.getStatus() %>"></td>
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
                    <td><<input type="text" name="token" hidden="true"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Update"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
