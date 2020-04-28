<%-- 
    Document   : vacancy_insert
    Created on : Feb 26, 2018, 2:22:51 PM
    Author     : SBMPC.Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vacancy Insert</title>
    </head>
    <body>
        <%

            Class.forName("com.mysql.jdbc.Driver");
            String jt = request.getParameter("Job Title");
            String p = request.getParameter("Period");
            String pa = request.getParameter("Payment");
            String d = request.getParameter("Description");
            String v = request.getParameter("Venue");

            Integer pay = Integer.parseInt(pa);
            Integer pe = Integer.parseInt(p);

            Connection a = DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza", "root", "root");

            PreparedStatement ps1 = a.prepareStatement("insert into job_vacancy values (?,?,?,?,?)");
            ps1.setString(1, jt);
            ps1.setInt(2, pe);
            ps1.setInt(3, pay);
            ps1.setString(4, d);
            ps1.setString(5, v);

            ps1.executeUpdate();
            response.sendRedirect("fac_home.jsp");

        %>
    </body>
</html>
