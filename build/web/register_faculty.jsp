<%-- 
    Document   : register_faculty
    Created on : Feb 17, 2018, 10:54:28 AM
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
        <title>Register Faculty</title>
    </head>
    <body>
        <%
            
          
            Class.forName("com.mysql.jdbc.Driver");
                  int i=0;
                  String First_name=request.getParameter("First_name");
                  String Last_name=request.getParameter("Last_name");
                  String Sap_ID=request.getParameter("Sap_ID");
                  String Username=request.getParameter("Username");
                  String pass=request.getParameter("pass");
                  String cpass=request.getParameter("cpass");
                  String Email=request.getParameter("Email");
                  String Phone_no=request.getParameter("Phone_no");
                  String gender=request.getParameter("gender");
                  String Dob =request.getParameter("Dob"); 
                  String Dept=request.getParameter("Dept");
                  String committee=request.getParameter("committee");
                  
                  Long sap=Long.parseLong(Sap_ID);
                  Long phone=Long.parseLong(Phone_no);
                  
                  SimpleDateFormat formatter = new SimpleDateFormat("MM-dd-yyyy");
                  Date date = formatter.parse(Dob);
                  java.sql.Date sqlDate = new java.sql.Date(date.getTime());
        
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
                        PreparedStatement ps1 = a.prepareStatement("insert into faculty values (?,?,?,?,?,?,?,?,?,?)");
                        ps1.setString(1,First_name);
                        ps1.setString(2,Last_name);
                        ps1.setLong(3,sap);
                        ps1.setString(4,Username);
                        ps1.setString(5,Email);
                        ps1.setLong(6,phone);
                        ps1.setString(7,gender);
                        ps1.setDate(8,sqlDate);
                        ps1.setString(9,Dept);
                        ps1.setString(10,committee);
                        
               
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


 

