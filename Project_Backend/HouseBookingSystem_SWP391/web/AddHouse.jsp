<%-- 
    Document   : AddHouse
    Created on : Oct 1, 2022, 1:00:49 AM
    Author     : Admin
--%>

<%@page import="Model.House"%>
<%@page import="Model.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Location"%>
<%@page import="java.util.List"%>
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
        <%
        List<Location> llist = new ArrayList<Location>();
            if (request.getAttribute("llist") != null) {
                llist = (List<Location>) request.getAttribute("llist");
            }
            List<Menu> mlist = new ArrayList<Menu>();
            if (request.getAttribute("mlist") != null) {
                mlist = (List<Menu>) request.getAttribute("mlist");
            }
        House h = new House();
            if (request.getAttribute("house") != null) {
                h = (House) request.getAttribute("house");
            }
        %>
        <header>
            <c:import url="Header_LoginedAdmin.jsp"></c:import>
        </header>
        
        <section class="add-products">
      <h1 class="title">Add House</h1>

      <form action="AddHouseServlet" method="post" >
        <input
          type="text"
          name="houseid"
          class="box"
          placeholder="Enter Account ID"
          hidden="true"
        />
        <h2>Post Date</h2>
        <input
          type="date"
          name="postdate"
          class="box"
          required=""
        />
        <h2>House Name</h2>
        <input
          type="text"
          name="housename"
          class="box"
          placeholder="Enter House Name"
          required=""
        />
        <input
          type="text"
          name="review"
          class="box"
          placeholder="Enter Review"
          hidden="true"
        />
        <h2>House Price</h2>
        <input
          type="number"
          name="houseprice"
          class="box"
          placeholder="Enter Houseprice"
          required=""
        />
        <h2>Address</h2>
        <input
          type="text"
          name="address"
          class="box"
          placeholder="Enter Address"
          required=""
        />
        <input
          type="number"
          name="status"
          value="<%=h.getStatus() %>"
          class="box"
          placeholder="Enter status"
          hidden="true"
        />
        <h2>Description</h2>
        <input
          type="text"
          name="description"
          class="box"
          placeholder="Enter role"
        />
        <h2>Location</h2>
        <select class="box"  name="location">
             <%
                for(Location l : llist){
                    %>
                    <option value="<%=l.getId() %>" ><%=l.getName() %></option>
                    <%
                }
                %>
        </select>
        <h2>Menu</h2>
        <select class="box" name="menu">
            <%
                for(Menu m : mlist){
                    %>
                    <option value="<%=m.getId() %>" ><%=m.getName() %></option>
                    <%
                }
                %>
        </select>
            
        
        
        <input class="Update-btn" type="submit" value="   Add   " name="Add House" />
      </form>
    </section>
    </body>
</html>
