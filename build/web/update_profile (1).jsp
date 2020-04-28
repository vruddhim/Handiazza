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
            String arr []=new String [10];
            int i;
            PreparedStatement ps;
            ResultSet rs;
            Class.forName("com.mysql.jdbc.Driver");
            Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza","root" ,"root");
            arr[0]=request.getParameter("sap");
            ps=c.prepareStatement("delete from education where sap_id=?");
            ps.setLong(1,Long.parseLong(arr[0]));
            ps.executeUpdate();
            c.close();
            c= DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza","root" ,"root");
            arr[1]=request.getParameter("sch");
            arr[2]=request.getParameter("ten");
            arr[3]=request.getParameter("branch");
            arr[4]=request.getParameter("dur");
            arr[5]=request.getParameter("des");
            arr[6]=request.getParameter("ap");
            arr[7]=request.getParameter("sem");
            ps=c.prepareStatement("insert into education values(?,?,?,?,?,?,?,?)");
            ps.setLong(1,Long.parseLong(arr[0]));
            ps.setString(2,arr[1]);
            ps.setFloat(3,Float.parseFloat(arr[2]));
            ps.setFloat(4,Float.parseFloat(arr[6]));
            ps.setString(5,arr[3]);
            ps.setLong(6,Integer.parseInt(arr[7]));
            ps.setLong(7,Integer.parseInt(arr[4]));
            ps.setString(8,arr[5]);
            ps.executeUpdate();
            ps=c.prepareStatement("delete from achievement where sap_id=?");
            ps.setLong(1,Long.parseLong(arr[0]));
            ps.executeUpdate();
            c.close();
            c= DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza","root" ,"root");
            arr[1]=request.getParameter("c1");
            if(arr[1].compareTo("Enter a value                                  ")!=0)
            {
               ps=c.prepareStatement("insert into achievement(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            arr[1]=request.getParameter("c2");
            if(arr[1].compareTo("Enter a value                                  ")!=0)
            {
               ps=c.prepareStatement("insert into achievement(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            arr[1]=request.getParameter("c3");
            if(arr[1].compareTo("Enter a value                                  ")!=0)
            {
               ps=c.prepareStatement("insert into achievement(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            arr[1]=request.getParameter("c4");
            if(arr[1].compareTo("Enter a value                                  ")!=0)
            {
                
               ps=c.prepareStatement("insert into achievement(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            arr[1]=request.getParameter("c5");
            if(arr[1].compareTo("Enter a value                                  ")!=0)
            {
                
               ps=c.prepareStatement("insert into achievement(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            
            arr[1]=request.getParameter("c6");
            if(arr[1].compareTo("Enter a value                                  ")!=0)
            {
               ps=c.prepareStatement("insert into achievement(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            ps=c.prepareStatement("delete from skills where sap_id=?");
            ps.setLong(1,Long.parseLong(arr[0]));
            ps.executeUpdate();
            c.close();
            c= DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza","root" ,"root");
            arr[1]=request.getParameter("is1");
            if(arr[1].compareTo("Enter a value  ")!=0)
            {
               ps=c.prepareStatement("insert into skills(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            arr[1]=request.getParameter("is2");
            if(arr[1].compareTo("Enter a value  ")!=0)
            {
               ps=c.prepareStatement("insert into skills(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            arr[1]=request.getParameter("is3");
            if(arr[1].compareTo("Enter a value  ")!=0)
            {
               ps=c.prepareStatement("insert into skills(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            arr[1]=request.getParameter("is4");
            if(arr[1].compareTo("Enter a value  ")!=0)
            {
                
               ps=c.prepareStatement("insert into skills(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            arr[1]=request.getParameter("s1");
            if(arr[1].compareTo("Enter a value  ")!=0)
            {
                
               ps=c.prepareStatement("insert into skills(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            
            arr[1]=request.getParameter("s2");
            if(arr[1].compareTo("Enter a value  ")!=0)
            {
               ps=c.prepareStatement("insert into skills(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            arr[1]=request.getParameter("s3");
            if(arr[1].compareTo("Enter a value  ")!=0)
            {
               ps=c.prepareStatement("insert into skills(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            arr[1]=request.getParameter("s4");
            if(arr[1].compareTo("Enter a value  ")!=0)
            {
               ps=c.prepareStatement("insert into skills(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            arr[1]=request.getParameter("s5");
            if(arr[1].compareTo("Enter a value  ")!=0)
            {
               ps=c.prepareStatement("insert into skills(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            ps=c.prepareStatement("delete from interests where sap_id=?");
            ps.setLong(1,Long.parseLong(arr[0]));
            ps.executeUpdate();
            c.close();
            c= DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza","root" ,"root");
            arr[1]=request.getParameter("i1");
            if(arr[1].compareTo("Enter a value                                                                                                                        ")!=0)
            {
               ps=c.prepareStatement("insert into interests(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            arr[1]=request.getParameter("i2");
            if(arr[1].compareTo("Enter a value                                                                                                                        ")!=0)
            {
               ps=c.prepareStatement("insert into interests(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            arr[1]=request.getParameter("i3");
            if(arr[1].compareTo("Enter a value                                                                                                                        ")!=0)
            {
               ps=c.prepareStatement("insert into interests(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            arr[1]=request.getParameter("i4");
            if(arr[1].compareTo("Enter a value                                                                                                                        ")!=0)
            {
                
               ps=c.prepareStatement("insert into interests(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            arr[1]=request.getParameter("i5");
            if(arr[1].compareTo("Enter a value                                                                                                                        ")!=0)
            {
                
               ps=c.prepareStatement("insert into interests(sap_id,description) values (?,?)"); 
               ps.setLong(1,Long.parseLong(arr[0]));
               ps.setString(2, arr[1]);
               ps.executeUpdate();
            }
            
            response.sendRedirect("student_home.jsp");
        %>
    </body>
</html>
