<%-- 
    Document   : ListUser
    Created on : Oct 11, 2022, 10:56:03 PM
    Author     : kusib
--%>

<%@page import="Model.User"%>
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
        List<User> list = new ArrayList<User>();
        if(request.getAttribute("UserList") != null){
            list = (List<User>) request.getAttribute("UserList");
        }
        %>
        <div class="header_fixed">
       
        
        <c:import url="Header_LoginedAdmin.jsp"></c:import>
            <table>
                <thead>
                    <tr>
                    <th>user_id</th>
                    <th>fullname</th>
                    <th>avatar</th>
                    <th>username</th>
                    <th>password</th>
                    <th>phone</th>
                    <th>status</th>
                    <th>role_id</th>
                    </tr>
                </thead>
            <%
                for(User user : list){
                %>
                <tr>
                    <td><%=user.getUserId()%></td>
                    <td><%=user.getFullName()%></td>
                    <td><%=user.getAvatar()%></td>
                    <td><%=user.getUsername()%></td>
                    <td><%=user.getPassword()%></td>
                    <td><%=user.getPhone()%></td>
                    <td><%=user.getStatus()%></td>
                    <td><%=user.getRoleId() %></td>
                    <td>
                            <span class="action_btn">
                                <a href="NextEditUserServlet?id=<%=user.getUserId()%>">Update</a>
                                <a href="DeleteUserServlet?id=<%=user.getUserId()%>">Delete</a>
                                <a href="NextAddUsereServlet">Add</a>
                            </span>
                </tr>
                <%
                }
                %>
            </table>
    </body>
</html>
