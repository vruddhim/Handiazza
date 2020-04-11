<%-- 
    Document   : unvalid
    Created on : 5 Apr, 2018, 10:24:22 AM
    Author     : yashs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%
         Class.forName("com.mysql.jdbc.Driver");
         String uname=request.getParameter("q");
         Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza", "root", "root");
        PreparedStatement ps = c.prepareStatement("Select * from login where username=?");
        ps.setString(1,uname);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
           out.println("Username already exists"); 
        }
     %>   
    </body>
</html>
