<%-- 
    Document   : AdminIndex
    Created on : Oct 1, 2022, 1:25:47 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:import url="Header_LoginedAdmin.jsp"></c:import>
        
        
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
