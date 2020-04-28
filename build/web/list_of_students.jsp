<%-- 
    Document   : list_of_students
    Created on : Mar 5, 2018, 4:50:27 PM
    Author     : vruddhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.*"%>
<% String[] los;

    Class.forName("com.mysql.jdbc.Driver");
    Connection a = DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza", "root", "root");
    PreparedStatement ps1 = a.prepareStatement("insert into notify_los(jobid,sap_id) values(?,?)");

    int j = (int) session.getAttribute("job");

    los = request.getParameterValues("checkbox");
    if (los != null) {
        for (int i = 0; i < los.length; i++) {
            ps1.setInt(1, j);
            ps1.setString(2, los[i]);
            ps1.executeUpdate();
        }
    }
    response.sendRedirect("recruitor_home.jsp");
%>