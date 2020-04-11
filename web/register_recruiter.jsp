<%-- 
    Document   : register_recruiter
    Created on : Feb 3, 2018, 8:54:47 AM
    Author     : SBMPC.Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Recruiter</title>
    </head>
    <body>
        <%
                  Class.forName("com.mysql.jdbc.Driver");
                  int i=0;
                  String Company_name=request.getParameter("Company_name");
                  String Email=request.getParameter("E-mail");
                  String Username=request.getParameter("Username");
                  String Company=request.getParameter("Company_ID");
                  String cpass=request.getParameter("CPassword");
                  int cid=Integer.parseInt(Company);
                  Connection a= DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza","root","root");
                 
                  PreparedStatement ps = a.prepareStatement("select * from login where username=?");
                  ps.setString(1,Username);
                  ResultSet rs;
                  rs = ps.executeQuery();
                  while(rs.next())
                  {
                      i++;
                  }
                  if(i>0)
                  {
                      out.print("Username already exists");
                                                              
                  }
                  if(i==0)
                  {
                        PreparedStatement ps1 = a.prepareStatement("insert into recruiter values (?,?,?,?)");
                        ps1.setString(1,Company_name);
                        ps1.setString(2,Email);
                        ps1.setString(3,Username);
                        ps1.setInt(4,cid);
                        ps1.executeUpdate();
                  }
                  
                        PreparedStatement ps2 = a.prepareStatement("insert into login values (?,?)");
                        ps2.setString(1,Username);
                        ps2.setString(2,cpass);
                        ps2.executeUpdate();
                   response.sendRedirect("login.jsp");

          %>
    </body>
</html>
