<%-- 
    Document   : AddAccount
    Created on : Sep 30, 2022, 9:43:16 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <body>
        <header>
            <c:import url="Header_LoginedAdmin.jsp"></c:import>
        </header>
    <section class="add-products">
      <h1 class="title">Add Account</h1>

      <form action="AddAccountServlet" method="post" >
<!--        <h3>Update Account</h3>-->
        <input
          type="text"
          name="id"
          class="box"
          placeholder="Enter Account ID"
          hidden="true"
        />
        <input
          type="file"
          name="userimg"
          class="box"
          hidden="true"
        />
        <h2>Full Name</h2>
        <input
          type="text"
          name="fullname"
          class="box"
          placeholder="Enter Full Name"
        />
        <h2>Username</h2>
        <input
          type="text"
          name="username"
          class="box"
          placeholder="Enter Username"
        />
        <h2>Password</h2>
        <input
          type="password"
          name="password"
          class="box"
          placeholder="Enter Password"
        />
        <h2>Phone</h2>
        <input
          type="number"
          name="phone"
          class="box"
          placeholder="Enter phone number"
        />
        <input
          type="number"
          name="status"
          class="box"
          placeholder="Enter status"
          hidden="true"
        />
        <input
          type="number"
          name="role"
          class="box"
          placeholder="Enter role"
          hidden="true"
        />
        <input class="Update-btn" type="submit" value="   Add  " name="Update" />
      </form>
    </section>
    </body>
</html>
