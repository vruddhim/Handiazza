<%-- 
    Document   : Filtering requirements
    Created on : 26 Jan, 2018, 8:44:03 PM
    Author     : admin
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.*"%>
﻿<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Los</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
    </head>
    <body>
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">

                    <form class="login100-form validate-form" method="POST" action="list_of_students.jsp" >
                        <span class="login100-form-title">
                            Capability Match 
                        </span>
                       
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>Sap Id</th>
                                <th>Percentage</th>
                                <th>Checklist</th>
                            </tr>       
                            </thead>
                            <%
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection a = DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza", "root", "root");
                                PreparedStatement ps1 = a.prepareStatement("select * from filtered_students where job_id=? order by percentage desc");

                                String j = request.getParameter("jobid");
                                int jid = Integer.parseInt(j);
                                session.setAttribute("job", jid);
                                ps1.setInt(1, jid);
                                ResultSet rs;
                                rs = ps1.executeQuery();

                                while (rs.next()) {
                            %>
                            
                            <tbody>
                            <tr>
                            
                               
  
                                <td> <%=rs.getString("sap_id")%></td>
                                    <td><%=rs.getDouble("percentage")%> </td>
                                    <td>
                                    <input  class="td2" type="checkbox" name="checkbox" value=" <%=rs.getString("sap_id")%>" checked="no" >
                                    &nbsp;&nbsp;
                                    </td>
                               
                            </tr> 
                        
                            <%}%>
                            <tr>
                                <td class="container-login100-form-btn"><input type="submit" value="Submit" name="sub" class="login100-form-btn" ></td>
                            </tr>
                            </tbody>
                        </table>
                        
                    </form>
                </div>
            </div>
        </div>	
        <!--===============================================================================================-->	
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/tilt/tilt.jquery.min.js"></script>
        <script >
            $('.js-tilt').tilt({
                scale: 1.1
            })
        </script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>

    </body>
</html>