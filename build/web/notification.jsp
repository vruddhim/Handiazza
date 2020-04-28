<%-- 
    Document   : notify
    Created on : Apr 5, 2018, 5:01:52 PM
    Author     : vruddhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Notify</title>
   <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="vendor/devicons/css/devicons.min.css" rel="stylesheet">
    <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/resume.min.css" rel="stylesheet">

  </head>

  <body id="page-top">

      <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
          <a class="navbar-brand js-scroll-trigger" href="#page-top"></a>
      </nav>
      <%
          long sap=Long.parseLong(session.getAttribute("user").toString());
          Class.forName("com.mysql.jdbc.Driver");
          Connection a = DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza", "root", "root");
          PreparedStatement ps1 = a.prepareStatement("select * from notify_los where sap_id=?");
          ps1.setLong(1,sap);
          ResultSet rs=ps1.executeQuery();
          int i=0;
          while(rs.next())
          {
              i++;
          }
          rs=ps1.executeQuery();
          if(i>0)
          {
          while(rs.next())
          {
       %>
       <div>You have been selected for the job. The job ID is<%=rs.getInt("jobid")%> Congratulations!!</div><br>
       <% }}
else
{%>
<div>Sorry no new notifications</div>
<% } %>
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/resume.min.js"></script>

  </body>

</html>

