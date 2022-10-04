<%-- 
    Document   : Header_LoginedAdmin
    Created on : Oct 1, 2022, 1:26:25 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="admin_style.css">
   <!-- Boostrap 5 -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>  

   <!-- jquery -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   
   
    </head>
    
        <header class="header">

      <div class="flex">
   
          <a href="AdminIndex.jsp" class="logo">Admin<span>Panel</span></a>
   
         <nav class="navbar">
            <a href="AdminIndex.jsp"><span>Home</span></a>
            <a href="ListHouseServlet">Room</a>
            <a href="admin_orders.html">Orders</a>
            <a href="ListAccountServlet">Users</a>
            <a href="admin_contacts.html">Messages</a>
         </nav>
   
         <div class="icons">
            <div id="menu-btn" class="fas fa-bars"></div>
            <div id="user-btn" class="fas fa-user"></div>
         </div>
   
         <div class="account-box">
          <p>username : <span></span></p>
          <a href="LogoutServlet" class="delete-btn">logout</a>
          <div>
            <a href="Login.jsp">login</a> |
            <a href="Register.jsp">register</a>
          </div>
   
      </div>
   </header>
    
</html>
<!-- custom admin js file link  -->
<script src="admin_script.js"></script>
