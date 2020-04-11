<%-- 
    Document   : displayach
    Created on : 25 Oct, 2018, 10:13:00 PM
    Author     : yashs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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

   

    

    </head>
    <body>
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <br><Br><Br><Br><br><br><br><br>
                    <form class="login100-form validate-form" method="POST" action="list_of_students.jsp" >
                        <span class="login100-form-title">
                            Report  
                        </span>
        
        <%
            Class.forName("com.mysql.jdbc.Driver");
            java.util.Date date=new java.util.Date();
            
            String s=(date.toString()).substring(4,7);
     
            String s1=(date.toString()).substring(8,10);
            
            String y=(date.toString()).substring(30,34);
           
            
            String ye=request.getParameter("sem");
            String t=request.getParameter("time");
            
            
          
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza", "root", "root");
          ResultSet rs;
            if(t .equals("y"))
            {
                PreparedStatement ps = c.prepareStatement("Select * from ach where year=? And sem=?");
                ps.setString(1, "2018");
                ps.setString(2, ye);
                rs = ps.executeQuery();
            }
            else if(t .equals("m"))
            {
                PreparedStatement ps = c.prepareStatement("Select * from ach where month=? And sem=?");
                ps.setString(1, s);
                ps.setString(2, ye);
                rs = ps.executeQuery();
            
            }
            else
            {   
                PreparedStatement ps = c.prepareStatement("Select * from ach where date>=? And sem=?");
                ps.setInt(1,Integer.parseInt(s1)-7);
                ps.setString(2, ye);
                rs = ps.executeQuery();
            }
            


        
            
         %>
         <table class="table table-hover">
             <% while(rs.next())
             {%>
             <tr>
                 <td><%=rs.getLong("sapid")%></td>
                 <td><%=rs.getString("achievement")%>
             </tr>
             <% }%>
         </table>
         <br><Br><Br><Br><br><br><br><br><br><br><br><br><Br><Br><Br><br><br><br><br>
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
