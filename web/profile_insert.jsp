<%-- 
    Document   : edu_insert
    Created on : Mar 12, 2018, 1:13:17 PM
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
        <title>Insert Profile Details</title>
    </head>
    <body>
        <%
                  Class.forName("com.mysql.jdbc.Driver");
                 
                  String sap=request.getParameter("sap");
                  long sapid=Long.parseLong(sap);
                  String sch=request.getParameter("sch");
                  String ten=request.getParameter("ten");
                  int tenp=Integer.parseInt(ten);
                  String branch=request.getParameter("branch");
                  String sem=request.getParameter("sem");
                  int seme=Integer.parseInt(sem);
                  String dur=request.getParameter("dur");
                  int du=Integer.parseInt(dur);
                  String des=request.getParameter("des");
                  String ap=request.getParameter("ap");
                  int ape=Integer.parseInt(ap);
                  
                  Connection a= DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza","root","root");
                 
                 
                  PreparedStatement ps1 = a.prepareStatement("insert into education values (?,?,?,?,?,?,?,?)");
                  ps1.setLong(1,sapid);
                  ps1.setString(2,sch);
                  ps1.setInt(3,tenp);
                  ps1.setInt(4,ape);
                  ps1.setString(5,branch);
                  ps1.setInt(6,seme);
                  ps1.setInt(7,du);
                  ps1.setString(8,des);
                 
                  
                  
                  ps1.executeUpdate();
                  
                  
                        
                  String c1=request.getParameter("c1");
                  String c2=request.getParameter("c2");
                  String c3=request.getParameter("c3");
                  String c4=request.getParameter("c4");
                  String c5=request.getParameter("c5");
                  String c6=request.getParameter("c6");
                  
                  
                  PreparedStatement ps2 = a.prepareStatement("insert into achievement(sap_id,description) values (?,?)");
                  
                 if(c1.isEmpty()==false)
                 {
                     ps2.setLong(1,sapid);
                     ps2.setString(2,c1);
                     ps2.executeUpdate();
                     
                 }
                 if(c2.isEmpty()==false)
                 {
                     ps2.setLong(1,sapid);
                     ps2.setString(2,c2);
                     ps2.executeUpdate();
                     
                 }
                 if(c3.isEmpty()==false)
                 {
                     ps2.setLong(1,sapid);
                     ps2.setString(2,c3);
                     ps2.executeUpdate();
                     
                 }
                 if(c4.isEmpty()==false)
                 {
                     ps2.setLong(1,sapid);
                     ps2.setString(2,c4);
                     ps2.executeUpdate();
                     
                 }
                 if(c5.isEmpty()==false)
                 {
                     ps2.setLong(1,sapid);
                     ps2.setString(2,c5);
                     ps2.executeUpdate();
                     
                 }
                 if(c6.isEmpty()==false)
                 {
                     ps2.setLong(1,sapid);
                     ps2.setString(2,c6);
                     ps2.executeUpdate();
                     
                 }

                  
                        
                  String s1=request.getParameter("s1");
                  String s2=request.getParameter("s2");
                  String s3=request.getParameter("s3");
                  String s4=request.getParameter("s4");
                  String s5=request.getParameter("s5");
                  
                  
                  
                  PreparedStatement ps3 = a.prepareStatement("insert into skills(sap_id,description) values (?,?)");
                  
                 if(s1.isEmpty()==false)
                 {
                     ps3.setLong(1,sapid);
                     ps3.setString(2,s1);
                     ps3.executeUpdate();
                     
                 }
                 if(s2.isEmpty()==false)
                 {
                     ps3.setLong(1,sapid);
                     ps3.setString(2,s2);
                     ps3.executeUpdate();
                     
                 }
                 if(s3.isEmpty()==false)
                 {
                     ps3.setLong(1,sapid);
                     ps3.setString(2,s3);
                     ps3.executeUpdate();
                     
                 }
                 if(s4.isEmpty()==false)
                 {
                     ps3.setLong(1,sapid);
                     ps3.setString(2,s4);
                     ps3.executeUpdate();
                     
                 }
                 if(s5.isEmpty()==false)
                 {
                     ps3.setLong(1,sapid);
                     ps3.setString(2,s5);
                     ps3.executeUpdate();
                     
                 }
                
                  String is1=request.getParameter("is1");
                  String is2=request.getParameter("is2");
                  String is3=request.getParameter("is3");
                  String is4=request.getParameter("is4");
                  
                  
                  
                  
                  PreparedStatement ps4 = a.prepareStatement("insert into skills(sap_id,description) values (?,?)");
                  
                 if(is1.isEmpty()==false)
                 {
                     ps4.setLong(1,sapid);
                     ps4.setString(2,is1);
                     ps4.executeUpdate();
                     
                 }
                 if(is2.isEmpty()==false)
                 {
                     ps4.setLong(1,sapid);
                     ps4.setString(2,is2);
                     ps4.executeUpdate();
                     
                 }
                 if(is3.isEmpty()==false)
                 {
                     ps4.setLong(1,sapid);
                     ps4.setString(2,is3);
                     ps4.executeUpdate();
                     
                 }
                 if(is4.isEmpty()==false)
                 {
                     ps4.setLong(1,sapid);
                     ps4.setString(2,is4);
                     ps4.executeUpdate();
                     
                 }
                 
                  String i1=request.getParameter("i1");
                  String i2=request.getParameter("i2");
                  String i3=request.getParameter("i3");
                  String i4=request.getParameter("i4");
                  String i5=request.getParameter("i5");
                  
                  
                  
                  PreparedStatement ps5 = a.prepareStatement("insert into interests(sap_id,description) values (?,?)");
                  
                 if(i1.isEmpty()==false)
                 {
                     ps5.setLong(1,sapid);
                     ps5.setString(2,i1);
                     ps5.executeUpdate();
                     
                 }
                 if(i2.isEmpty()==false)
                 {
                     ps5.setLong(1,sapid);
                     ps5.setString(2,i2);
                     ps5.executeUpdate();
                     
                 }
                 if(i3.isEmpty()==false)
                 {
                     ps5.setLong(1,sapid);
                     ps5.setString(2,i3);
                     ps5.executeUpdate();
                     
                 }
                 if(i4.isEmpty()==false)
                 {
                     ps5.setLong(1,sapid);
                     ps5.setString(2,i4);
                     ps5.executeUpdate();
                     
                 }
                 if(i5.isEmpty()==false)
                 {
                     ps5.setLong(1,sapid);
                     ps5.setString(2,i5);
                     ps5.executeUpdate();
                     
                 }
                
                    response.sendRedirect("login.jsp");
          %>
    </body>
</html>

