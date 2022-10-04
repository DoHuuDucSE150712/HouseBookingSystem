<%-- 
    Document   : Login
    Created on : Oct 1, 2022, 1:13:13 AM
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

   <!-- custom css file link  -->
   <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <%
        String mess ="";
        if (request.getAttribute("mess") !=null) {
                mess =request.getAttribute("mess").toString();
            }
        %>
        <div class="form-container">
   <form action="LoginServlet" method="post">
      <h3>login now</h3>
      <input type="text" name="username" placeholder="enter your username" required class="box">
      <input type="password" name="password" placeholder="enter your password" required class="box">
      <input type="submit" name="submit" value="Login" class="btn">
      <p>don't have an account? <a href="Register.jsp">Register Now</a></p>
   </form>
</div>
<!--        <form action="LoginServlet" method="post" class="formlogin"
            <table>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username" placeholder="Input your username"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" placeholder="Input your password"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Login" name="action"></td>
                </tr>
            </table>
        </form>-->
        <p style="color: red" ><%=mess %> </p>
    </body>
</html>
