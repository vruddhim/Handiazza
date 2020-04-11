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

        <title>Chatting</title>

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
        <a href="student_home.jsp">  <i class="fa fa-home" style="font-size:35px;color:black; position: absolute; top: 8px; right: 70px;"></i></a>
        <a href="destroy_session.jsp">  <i class="fa fa-sign-out" style="font-size:35px;color:black; position: absolute; top: 8px; right: 20px;"></i></a> 
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">

            <h2>" The best teachers are those who show you where to look, but don't' tell you what to see. "</h2>
        </nav>

        <div class="chatContainer">
            <br><br>
            <%
                String resultfn = "";
                Long resultsap = 0L;
                String username = "";
                
                long sap = Long.parseLong(session.getAttribute("user").toString());
                String branch = "";
                String fname = "";
                String type = session.getAttribute("type").toString();
                Class.forName("com.mysql.jdbc.Driver");
                Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza", "root", "root");
                PreparedStatement ps;
                ResultSet rs;
            %>
            <form>
                <% if (type.equals("student")) {
                        branch = request.getParameter("dept");
                        fname = request.getParameter("facname");
                        ps = c.prepareStatement("Select * from faculty where dept=? AND fname=?");
                        ps.setString(1, branch);
                        ps.setString(2, fname);
                        rs = ps.executeQuery();
                        if (rs.next()) {
                            resultfn = rs.getString("fname");
                            resultsap = rs.getLong("sap_id");
                        }
                        ps = c.prepareStatement("Select * from personal_details where sap_id=?");
                        ps.setLong(1, sap);
                        rs = ps.executeQuery();
                        if (rs.next()) {
                            username = rs.getString("fname");
                        }

                    } else {

                        String n = request.getParameter("student");
                        Long s = 0L;
                        s = Long.parseLong(n);
                        ps = c.prepareStatement("Select * from personal_details where sap_id=?");
                        ps.setLong(1, Long.parseLong(n));

                        rs = ps.executeQuery();
                        if (rs.next()) {
                            resultfn = rs.getString("fname");
                            resultsap = rs.getLong("sap_id");
                        }
                        ps = c.prepareStatement("Select * from faculty where sap_id=?");
                        ps.setLong(1, sap);
                        rs = ps.executeQuery();
                        if (rs.next()) {
                            username = rs.getString("fname");

                        }

                    }

                %>
            </form><br>
            <br>
            <input type="button" onclick="connect()" value="connect"><br><br>
            <div id="msg"></div><br><br>
            <form>
                <input type="text" id="message"/>
                <input type="button" name="button" value="Send" onclick = "sendMessage()"/>
            </form>
            <%  String fn = "";
                if (type.equals("student")) {
                    ps = c.prepareStatement("Select fname from personal_details where sap_id=?");
                    ps.setLong(1, sap);
                    rs = ps.executeQuery();
                    if (rs.next()) {
                        fn = rs.getString("fname");
                    }
                } else {
                    ps = c.prepareStatement("Select fname from faculty where sap_id=?");
                    ps.setLong(1, sap);
                    rs = ps.executeQuery();
                    if (rs.next()) {
                        fn = rs.getString("fname");
                    }
                }
           %>
        </div>
    </div>
    <script>

        var socket = io("localhost:3000/");
      var from = '<%=sap%>';
       var user = '<%=username%>';
        var to =<%= resultsap%>;

        function connect() {
          socket.emit('setUsername', from);
      }
        ;

        socket.on('userSet', function () {

            document.getElementById("msg").innerHTML = 'You are now connected! ';
        });
        function sendMessage() {

            var msg = document.getElementById("message").value;
            document.getElementById("message").value = '';
            if (msg) {
                document.getElementById("msg").innerHTML += '<div><b>' + user + '</b>:' + msg + '</div>';
                socket.emit('msg', {message: msg, to: to, from: from, user: user});

            }
        }
        socket.on(from, function (data) {
            if (data.to == from)
            {
                console.log(data);
                document.getElementById("msg").innerHTML += '<div><b>' +
                        data.user + '</b>: ' + data.message + '</div>';

            }
        });
    </script>
   
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/resume.min.js"></script>
   
</body>

</html>
