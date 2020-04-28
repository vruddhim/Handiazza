<%-- 
    Document   : loginvalidate
    Created on : 29 Jan, 2018, 12:17:25 PM
    Author     : yashs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Validate</title>
    </head>

    <%

        int i = 0;
        char category;
        Class.forName("com.mysql.jdbc.Driver");
        String username = request.getParameter("uname");
        String password = request.getParameter("passwd");
        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza", "root", "root");
        PreparedStatement ps = c.prepareStatement("Select * from login where username=? And password=?");
        ps.setString(1, username);
        ps.setString(2, password);
        ResultSet rs;

        rs = ps.executeQuery();

        while (rs.next()) {
            i++;
        }
        if (i == 0) {
    %>

    <body>
        <script>
            alert("Username or password incorrect");
        </script>
    

<%
        response.sendRedirect("login.jsp");

    } else {
  
        category = username.charAt(0);
        ps = c.prepareStatement("Select sap_id from personal_details where username=?");
        ps.setString(1, username);
        rs = ps.executeQuery();

        if (username.equals("admin") && password.equals("admin")) {
            response.sendRedirect("adminhome.jsp");
        } else if (category == 's') {
            if (rs.next()) {
                session.setAttribute("user", rs.getString("sap_id"));
            }
            response.sendRedirect("student_home.jsp");
        } else if (category == 'r') {
            ps = c.prepareStatement("Select company_id from recruiter where username=?");
            ps.setString(1, username);
            rs=ps.executeQuery();

            if (rs.next()) {
                session.setAttribute("user", rs.getString("company_id"));
            }
            response.sendRedirect("recruitor_home.jsp");
        } else if (category == 'f') {
            ps = c.prepareStatement("Select * from faculty where username=?");
            ps.setString(1, username);
            rs=ps.executeQuery();
            if (rs.next()) {
                session.setAttribute("user", rs.getLong("sap_id"));
            }
            response.sendRedirect("fac_home.jsp");
        }

    }


%>
</body>
</html>

