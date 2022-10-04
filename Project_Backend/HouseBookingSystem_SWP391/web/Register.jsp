<%-- 
    Document   : Register
    Created on : Oct 1, 2022, 1:35:40 AM
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
        <div class="form-container">

   <form action="AddAccountServlet" method="post">
       <h3>Register Now</h3>
      <h1>Full Name</h1>
      <input type="text" name="fullname" placeholder="enter your fullname" required="" class="box">
      <input type="text" name="userimg" placeholder="enter your image" hidden="true" class="box">
      <h1>Username</h1>
      <input type="text" name="username" placeholder="enter your username" required="" class="box">
      <h1>Password</h1>
      <input type="password" name="password" placeholder="enter your password" required="" class="box">
      <h1>Phone</h1>
      <input type="number" name="phone" placeholder="enter your phone" required="" class="box">
      <input type="number" name="status" placeholder="enter your image" hidden="true" class="box">
      <input type="text" name="role" placeholder="enter your image" hidden="true" class="box">
      <h1>Role</h1>
      <select name="user_type" class="box">
         <option value="user">user</option>
         <option value="admin">admin</option>
      </select>
      <input type="submit" name="submit" class="btn-register" value="register now" >
      <p>Already have an account? <a href="login.html">login now</a></p>
   </form>

</div>
<!--        <form action="AddAccountServlet" method="post">
            <table>
                <tr>
                    <td>Full Name</td>
                    <td><input type="text" name="fullname" required=""></td>
                </tr>
                <tr>
                    <td><input type="text" name="userimg" hidden="true"></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username" required=""></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" required=""></td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td><input type="number" name="phone" required=""></td>
                </tr>
                <tr>
                    <td><input type="number" name="status" hidden="true"></td>
                </tr>
                <tr>
                    <td><input type="text" name="role" hidden="true"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Sign Up"></td>
                </tr>
            </table>
        </form>-->
    </body>
</html>
