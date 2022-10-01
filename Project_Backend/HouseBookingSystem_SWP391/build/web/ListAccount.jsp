<%-- 
    Document   : newjsp
    Created on : Sep 30, 2022, 7:06:50 PM
    Author     : Admin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        List<Account> list = new ArrayList<Account>();
        if(request.getAttribute("AccountList") != null){
            list = (List<Account>) request.getAttribute("AccountList");
        }
        %>
        <h1>Manage Account</h1>
        <form action="mainController" method="get">
            Name : <input type="text" name="name" >
            <input type="submit" value="search" name="action">
        </form>
        <br>
        <a href="AddAccount.jsp"><button>Add Account</button></a>
        <table border="1">
            <tr>
                <th>Account_ID</th>
                <th>Full Name</th>
                <th>Account_Img</th>
                <th>Username</th>
                <th>Password</th>
                <th>Phone</th>
                <th>Status</th>
                <th>Role</th>
            </tr>
            <%
                for(Account a : list){
                %>
                <tr>
                    <td><%=a.getUserid() %></td>
                    <td><%=a.getFullname() %></td>
                    <td><%=a.getUserimg() %></td>
                    <td><%=a.getUsername() %></td>
                    <td><%=a.getPass() %></td>
                    <td><%=a.getPhone() %></td>
                    <td><%=a.getStatus() %></td>
                    <td><%=a.getRole().getId() %></td>
                    <td><a href="NextEditAccountServlet?id=<%=a.getUserid() %>"><button>Update</button></a></td>
                    <td><a href="DeleteAccountServlet?id=<%=a.getUserid() %>"><button>Delete</button></a></td>
                </tr>
                <%
                }
                %>
        </table>
    </body>
</html>
