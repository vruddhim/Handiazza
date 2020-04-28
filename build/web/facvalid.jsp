<%-- 
    Document   : facvalid
    Created on : 5 Apr, 2018, 4:19:51 PM
    Author     : yashs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            long s=57380150050L;
            session.setAttribute("user",s);
            response.sendRedirect("notification.jsp");
        %>
    </body>
</html>
