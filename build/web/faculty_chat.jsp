<%-- 
    Document   : chatting
    Created on : Mar 5, 2018, 4:47:12 PM
    Author     : vruddhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
﻿<!DOCTYPE html>
<html lang="en">

    <head>
        <script src = "https://cdnjs.cloudflare.com/ajax/libs/socket.io/2.0.4/socket.io.js"></script>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Faculty Chatting</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="vendor/devicons/css/devicons.min.css" rel="stylesheet">
        <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/chat.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Aclonica" rel="stylesheet">	
    </head>

    <body id="page-top">
        <a href="fac_home.jsp">  <i class="fa fa-home" style="font-size:35px;color:black; position: absolute; top: 8px; right: 70px;"></i></a>
        <a href="destroy_session.jsp">  <i class="fa fa-sign-out" style="font-size:35px;color:black; position: absolute; top: 8px; right: 20px;"></i></a> 
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">

            <h2>" The best teachers are those who show you where to look, but don't tell you what to see. "</h2>
        </nav>
        <div class="chatContainer">
            <br><br>
            <h1>Seek An Answer !</h1><br><br>
            <form action="chatting.jsp" method="post">
                <h4>Enter branch:
                    <select name="dept" onchange="get(this.value)">
                        <option>Select</option>
                        <option value="Computer Engineering">Computer Engineering</option>
                        <option value="IT">IT</option>
                        <option value="Mechanial Engineering">Mechanical Engineering</option>
                        <option value="Electrical Engineering">Electrical Engineering</option>
                        <option value="Civil Engineering">Civil Engineering</option>
                        <option value="Electronics">Electronics</option>
                        <option value="Plastics Engineering">Plastics Engineering</option>
                        <option value="Chemical Engineering">Chemical Engineering</option>
                    </select><br><br>
                    Enter Semester :&nbsp;<select name="sem" onchange="show(this.value)">
                        <option>Select</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                    </select><br>
                    <br>
                    <div>
                        Student :&nbsp;<select id="list" name="student">
                            <option>select</option>
                            </h4>
                        </select><br><br>
                        <input type="submit" value="Submit">
                    </div>
            </form>
            <%

                session.setAttribute("type", "teacher");
            %>
        </div>
    </div>


    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/resume.min.js"></script>
    <script>
                        var sel = '';
                        function get(st)
                        {
                            sel = st;

                        }
                        function show(str)
                        {
                            var xmlhttp;
                            if (window.XMLHttpRequest)
                            {
                                xmlhttp = new XMLHttpRequest();
                            } else
                            {
                                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                            }
                            xmlhttp.onreadystatechange = function ()
                            {
                                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                                {
                                    document.getElementById("list").innerHTML = xmlhttp.responseText;
                                    document.getElementById("list").value = xmlhttp.responseText;
                                }
                            }
                            xmlhttp.open("GET", "getst.jsp?q=" + str + "&r=" + sel, true);
                            xmlhttp.send();
                        }
    </script>
</body>

</html>
