<%-- 
    Document   : update_profile.jsp
    Created on : 18 Mar, 2018, 2:39:51 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update_profile</title>
    </head>
    <body>
        <%
                  Class.forName("com.mysql.jdbc.Driver");
                 
                  String sap=request.getParameter("sap");
                  long sapid=Long.parseLong(sap);
                  String sch=request.getParameter("sch");
                  String ten=request.getParameter("ten");
                  float tenp=Float.parseFloat(ten);
                 
                  String branch=request.getParameter("branch");
                  String sem=request.getParameter("sem");
                  int seme=Integer.parseInt(sem);
                  String dur=request.getParameter("dur");
                  int du=Integer.parseInt(dur);
                  String des=request.getParameter("des");
                  String ap=request.getParameter("ap");
                  float ape=Float.parseFloat(ap);
                  
                  Connection a= DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza","root","root");
                 
                  PreparedStatement ps = a.prepareStatement("delete from education where sap_id=?");
                  ps.setLong(1,sapid);
                  ps.executeUpdate();
                  
                  PreparedStatement ps1 = a.prepareStatement("insert into education values (?,?,?,?,?,?,?,?)");
                  ps1.setLong(1,sapid);
                  ps1.setString(2,sch);
                  ps1.setFloat(3,tenp);
                  ps1.setFloat(4,ape);
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
                  
                  PreparedStatement ps2 = a.prepareStatement("delete from achievement where sap_id=?");
                  ps2.setLong(1,sapid);
                  ps2.executeUpdate();
                  
                  
                  PreparedStatement ps3 = a.prepareStatement("insert into achievement(sap_id,description) values (?,?)");
                  
                 if(c1.isEmpty()==false)
                 {
                     ps3.setLong(1,sapid);
                     ps3.setString(2,c1);
                     ps3.executeUpdate();
                     
                 }
                 if(c2.isEmpty()==false)
                 {
                     ps3.setLong(1,sapid);
                     ps3.setString(2,c2);
                     ps3.executeUpdate();
                     
                 }
                 if(c3.isEmpty()==false)
                 {
                     ps3.setLong(1,sapid);
                     ps3.setString(2,c3);
                     ps3.executeUpdate();
                     
                 }
                 if(c4.isEmpty()==false)
                 {
                     ps3.setLong(1,sapid);
                     ps3.setString(2,c4);
                     ps3.executeUpdate();
                     
                 }
                 if(c5.isEmpty()==false)
                 {
                     ps3.setLong(1,sapid);
                     ps3.setString(2,c5);
                     ps3.executeUpdate();
                     
                 }
                 if(c6.isEmpty()==false)
                 {
                     ps3.setLong(1,sapid);
                     ps3.setString(2,c6);
                     ps3.executeUpdate();
                     
                 }

                  
                        
                  String s1=request.getParameter("s1");
                  String s2=request.getParameter("s2");
                  String s3=request.getParameter("s3");
                  String s4=request.getParameter("s4");
                  String s5=request.getParameter("s5");
                  
                  PreparedStatement ps4 = a.prepareStatement("delete from skills where sap_id=?");
                  ps4.setLong(1,sapid);
                  ps4.executeUpdate();
                  
                  PreparedStatement ps5 = a.prepareStatement("insert into skills(sap_id,description) values (?,?)");
                  
                 if(s1.isEmpty()==false)
                 {
                     ps5.setLong(1,sapid);
                     ps5.setString(2,s1);
                     ps5.executeUpdate();
                     
                 }
                 if(s2.isEmpty()==false)
                 {
                     ps5.setLong(1,sapid);
                     ps5.setString(2,s2);
                     ps5.executeUpdate();
                     
                 }
                 if(s3.isEmpty()==false)
                 {
                     ps5.setLong(1,sapid);
                     ps5.setString(2,s3);
                     ps5.executeUpdate();
                     
                 }
                 if(s4.isEmpty()==false)
                 {
                     ps5.setLong(1,sapid);
                     ps5.setString(2,s4);
                     ps5.executeUpdate();
                     
                 }
                 if(s5.isEmpty()==false)
                 {
                     ps5.setLong(1,sapid);
                     ps5.setString(2,s5);
                     ps5.executeUpdate();
                     
                 }
                
                  String is1=request.getParameter("is1");
                  String is2=request.getParameter("is2");
                  String is3=request.getParameter("is3");
                  String is4=request.getParameter("is4");
                  
                  
                  
                  
                 
                 if(is1.isEmpty()==false)
                 {
                     ps5.setLong(1,sapid);
                     ps5.setString(2,is1);
                     ps5.executeUpdate();
                     
                 }
                 if(is2.isEmpty()==false)
                 {
                     ps5.setLong(1,sapid);
                     ps5.setString(2,is2);
                     ps5.executeUpdate();
                     
                 }
                 if(is3.isEmpty()==false)
                 {
                     ps5.setLong(1,sapid);
                     ps5.setString(2,is3);
                     ps5.executeUpdate();
                     
                 }
                 if(is4.isEmpty()==false)
                 {
                     ps5.setLong(1,sapid);
                     ps5.setString(2,is4);
                     ps5.executeUpdate();
                     
                 }
                 
                  String i1=request.getParameter("i1");
                  String i2=request.getParameter("i2");
                  String i3=request.getParameter("i3");
                  String i4=request.getParameter("i4");
                  String i5=request.getParameter("i5");
                  
                  PreparedStatement ps6 = a.prepareStatement("delete from interests where sap_id=?");
                  ps.setLong(1,sapid);
                  ps.executeUpdate();
                  
                  PreparedStatement ps7 = a.prepareStatement("insert into interests(sap_id,description) values (?,?)");
                  
                 if(i1.isEmpty()==false)
                 {
                     ps7.setLong(1,sapid);
                     ps7.setString(2,i1);
                     ps7.executeUpdate();
                     
                 }
                 if(i2.isEmpty()==false)
                 {
                     ps7.setLong(1,sapid);
                     ps7.setString(2,i2);
                     ps7.executeUpdate();
                     
                 }
                 if(i3.isEmpty()==false)
                 {
                     ps7.setLong(1,sapid);
                     ps7.setString(2,i3);
                     ps7.executeUpdate();
                     
                 }
                 if(i4.isEmpty()==false)
                 {
                     ps7.setLong(1,sapid);
                     ps7.setString(2,i4);
                     ps7.executeUpdate();
                     
                 }
                 if(i5.isEmpty()==false)
                 {
                     ps7.setLong(1,sapid);
                     ps7.setString(2,i5);
                     ps7.executeUpdate();
                     
                 }
                 out.println("Your changes have been recorded");
                
    %>
    </body>
</html>
