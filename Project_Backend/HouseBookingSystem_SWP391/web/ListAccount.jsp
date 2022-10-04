<%-- 
    Document   : newjsp
    Created on : Sep 30, 2022, 7:06:50 PM
    Author     : Admin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.Account"%>
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
    </head>
    <body>
    
         <%
        List<Account> list = new ArrayList<Account>();
        if(request.getAttribute("AccountList") != null){
            list = (List<Account>) request.getAttribute("AccountList");
        }
        %>       
    <div class="header_fixed">
<!--        <h1>Manage Account</h1>S
        <form action="mainController" method="get">
            Name : <input type="text" name="name" >
            <input type="submit" value="search" name="action">
        </form>
      -->
      <c:import url="Header_LoginedAdmin.jsp"></c:import>
        <table>
            <thead>
                <tr>
                <th>Account_ID</th>
                <th>Account_Img</th>
                <th>Full Name</th>
                <th>Username</th>
                <th>Password</th>
                <th>Phone</th>
                <th>Status</th>
                <th>Role</th>
                <th>Action</th>
                </tr>
            </thead>

            <%
                for(Account a : list){
                %>
                <tbody>
                    <tr>
                        <td><%=a.getUserid() %></td>
                        <td><%=a.getUserimg() %></td>
                        <td><%=a.getFullname() %></td>
                        <td><%=a.getUsername() %></td>
                        <td><%=a.getPass() %></td>
                        <td><%=a.getPhone() %></td>
                        <td><%=a.getStatus() %></td>
                        <td><%=a.getRole().getId() %></td>
                        <td>
                            <span class="action_btn">
                                <a href="NextEditAccountServlet?id=<%=a.getUserid() %>">Update</a>
                                <a href="DeleteAccountServlet?id=<%=a.getUserid() %>">Delete</a>
                                <a href="AddAccount.jsp">Add Account</a>
                            </span>
                        </td>
                    </tr>
                </tbody>
                <%
                }
                %>
                
        </table>
    </div>
   
       
    </body>
</html>
