<%-- 
    Document   : bill
    Created on : Oct 18, 2022, 7:58:21 PM
    Author     : Asus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="GetBillServlet">
            <table border="1">
                    <tr> 
                        <th>BILL_ID</th>
                        <th>HOUSE_ID</th>
                        <th>START_DATE</th>
                        <th>END_DATE</th>
                        <th>NOTE</th>
                        <th>ACTION</th>
                    </tr>
                    <tr>
                        <c:forEach items="${requestScope.LISTBILL}" var="b">
                         <td>${b.bill_id}</td>
                        <td>${b.house_id}</td>
                        <td>${b.start_date}</td>
                        <td>${b.end_date}</td>
                        <td>${b.note}</td>
                        <td>
                            <span class="action_btn">
                                <a href="">THANH TOAN</a>
                            </span>
                        </td>
                        </c:forEach>
                    </tr>
            </table>
        </form>
    </body>
</html>
