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
    </head>
    <body>
        <header class="header">

      <div class="flex">
   
         <a href="admin.html" class="logo">Admin<span>Panel</span></a>
   
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
            <p>email : <span></span></p>
            <a href="" class="delete-btn">logout</a>
            <div>new <a href="Login.jsp">login</a> | <a href="Register.jsp">register</a></div>
         </div>
   
      </div>
   </header>
   

      <!-- admin dashboard section starts  -->

      <section class="dashboard">

         <h1 class="title">dashboard</h1>

         <div class="box-container">

            <div class="box">
               <h3></h3>
               <p>total pendings</p>
            </div>

            <div class="box">
               <h3></h3>
               <p>completed payments</p>
            </div>

            <div class="box">
               <h3></h3>
               <p>order placed</p>
            </div>

            <div class="box">
               <h3></h3>
               <p>products added</p>
            </div>

            <div class="box">
               <h3></h3>
               <p>normal users</p>
            </div>

            <div class="box">
               <h3></h3>
               <p>admin users</p>
            </div>

            <div class="box">
               <h3></h3>
               <p>total accounts</p>
            </div>

            <div class="box">
               <h3></h3>
               <p>new messages</p>
            </div>

         </div>

      </section>
    </body>
</html>
