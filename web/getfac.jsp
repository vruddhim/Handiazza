<%-- 
    Document   : getfac
    Created on : 25 Mar, 2018, 3:24:52 PM
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
        <select>
        <%
            String dep=request.getParameter("q");
            Class.forName("com.mysql.jdbc.Driver");
            Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza","root" ,"root");
            PreparedStatement ps = c.prepareStatement("Select * from faculty where dept=?");
            ps.setString(1,dep);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
        %><option value="<%= rs.getString("fname")%>"><%= rs.getString("fname")%></option>
        </select> <% } %></body>
</html>
