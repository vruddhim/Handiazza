<%-- 
    Document   : getst
    Created on : 25 Mar, 2018, 4:32:29 PM
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
                Long s = 0L;
                String sem = request.getParameter("q");
                String d = request.getParameter("r");

                Class.forName("com.mysql.jdbc.Driver");
                Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza", "root", "root");
                PreparedStatement ps = c.prepareStatement("Select * from education where branch=? AND semester=?");
                ps.setString(1, d);
                ps.setInt(2, Integer.parseInt(sem));
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    PreparedStatement ps1 = c.prepareStatement("Select * from personal_details where sap_id=?");
                    s = rs.getLong("sap_id");
                    ps1.setLong(1, s);
                    ResultSet rs1 = ps1.executeQuery();
                    while (rs1.next()) {

            %>
            <option value="<%=rs1.getLong("sap_id")%>"><%=rs1.getString("fname")%></option>
        </select><% }
            }%>
    </body>
</html>
