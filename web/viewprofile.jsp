<%-- 
    Document   : profile
    Created on : Mar 5, 2018, 4:46:25 PM
    Author     : vruddhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
﻿<!DOCTYPE html>
<html>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Resume - Start Bootstrap Theme</title>

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
      <a href="student_home.jsp">  <i class="fa fa-home" style="font-size:35px;color:black; position: absolute; top: 8px; right: 70px;"></i></a>
<a href="destroy_session.jsp">  <i class="fa fa-sign-out" style="font-size:35px;color:black; position: absolute; top: 8px; right: 20px;"></i></a> 
       <%
          Class.forName("com.mysql.jdbc.Driver");
                   
                  Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza","root" ,"root");
                  
      %>
      <%          Long sap=0L;//initialize
                  String s=request.getParameter("sname");
                  PreparedStatement ps = c.prepareStatement("Select * from personal_details where fname=?");
                    ps.setString(1,s);
                    ResultSet rs;
                    rs=ps.executeQuery();
                    if(rs.next())
                    {
                        sap=rs.getLong("sap_id");
                    }
                    
                  
                    ps = c.prepareStatement("Select * from personal_details where sap_id=?");
                    ps.setLong(1,sap);
                    
                  
                  rs = ps.executeQuery();
                  if(rs.next())
                  {
                     
              %> 

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">
        
        <span class="d-none d-lg-block">
          <img  class ="img-fluid img-profile rounded-circle mx-auto mb-5"src="images/<%= rs.getString("image")%>" alt="">
        </span>
        <%}%>
      </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#about">Personal</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#experience">Education</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#education">Achivement</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#skills">Skills</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#interests">Interests</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#awards">Revise</a>
          </li>
        </ul>
      </div>
    </nav>
     
    <div class="container-fluid p-0">

      <section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">
        <div class="my-auto">
          <h1 class="mb-0">
              <% 
                   
                  
                     ps = c.prepareStatement("Select * from personal_details where sap_id=?");
                    ps.setLong(1,sap);
                     
                  
                  rs = ps.executeQuery();
                  if(rs.next())
                  {
                     
              %> 
              <%=rs.getString("fname") %>
              
            <span class="text-primary"><%=rs.getString("lname") %></span>
          </h1>
          <div class="subheading mb-5"><%=rs.getString("gender") %><br />
            <a href="mailto:name@email.com"><%=rs.getString("email") %></a>
          </div>
          <br>
          <div class="subheading mb-5"> Contact no:&nbsp;<%=rs.getString("phone") %></div><br>
          <div class="subheading mb-5"> Date of birth:&nbsp;<%=rs.getString("dob") %></div>
          <div class="subheading mb-5"> Sap id:&nbsp;<%=rs.getString("sap_id") %></div>
        </div><% }%>
      </section>

      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="experience">
        <div class="my-auto">
          <h2 class="mb-5">Education</h2>

            <% 
                   
                  
                           ps = c.prepareStatement("Select * from education where sap_id=?");
                    ps.setLong(1,sap);
                    
                  
                  rs = ps.executeQuery();
                  if(rs.next())
                  {
                     
              %> 
              <div class="subheading mb-5"> School Name:&nbsp;<%=rs.getString("school") %></div>
              <div class="subheading mb-5"> Tenth Score:&nbsp;<%=rs.getString("tenth_score") %></div>
              <div class="subheading mb-5"> Diploma average score:&nbsp;<%=rs.getString("avg_score") %></div>
              <div class="subheading mb-5"> Branch:&nbsp;<%=rs.getString("Branch") %></div>
              <div class="subheading mb-5"> Semester:&nbsp;<%=rs.getString("semester") %></div>
              <div class="subheading mb-5"> Work Duration:&nbsp;<%=rs.getString("work_duration") %>&nbsp;Months</div>
              <div class="subheading mb-5"> Work description:&nbsp;<%=rs.getString("work_description") %></div>

        </div><% }%>
      </section>

      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="education">
        <div class="my-auto">
          <h2 class="mb-5">Achievements</h2>
             <table>
             <% 
                    
                  
                           ps = c.prepareStatement("Select * from achievement where sap_id=?");
                    ps.setLong(1,sap);
                    
                  
                  rs = ps.executeQuery();
                  while(rs.next())
                  {
                     
              %> 
             
                  <tr>
                      <td><div class="subheading mb-5"><%=rs.getString("description") %></div></td>
                  </tr>
                  <% }%>
              </table>

        </div>
      </section>

      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="skills">
        <div class="my-auto">
          <h2 class="mb-5">Skills</h2>
  <table>
             <% 
                    
                           ps = c.prepareStatement("Select * from skills where sap_id=?");
                    ps.setLong(1,sap);
                    
                  
                  rs = ps.executeQuery();
                  while(rs.next())
                  {
                     
              %> 
             
                  <tr>
                      <td><div class="subheading mb-5"><%=rs.getString("description") %></div></td>
                  </tr>
                  <% }%>
              </table>
            

        </div>
      </section>

      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="interests">
        <div class="my-auto">
          <h2 class="mb-5">Interests</h2>
            <table>
             <% 
                    
                  
                           ps = c.prepareStatement("Select * from interests where sap_id=?");
                    ps.setLong(1,sap);
                    
                  
                  rs = ps.executeQuery();
                  while(rs.next())
                  {
                     
              %> 
             
                  <tr>
                      <td><div class="subheading mb-5"><%=rs.getString("description") %></div></td>
                  </tr>
                  <% }%>
              </table>
            
        </div>
      </section>

      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="awards">
        <div class="my-auto">
          <h2 class="mb-5">Revise</h2>
           
            <!-- Content from db -->

        </div>
      </section>
              

    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/resume.min.js"></script>

  </body>

</html>
