<%-- 
    Document   : faclutyhome
    Created on : 30 Jan, 2018, 9:32:46 PM
    Author     : yashs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/fac_home.css">
        <link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>	
        <link href="https://fonts.googleapis.com/css?family=Playball" rel="stylesheet">
        
        <!--===============================================================================================-->
    </head>
    <body>

        <div class="limiter">
            <div class="container-login100">

                <a href="login.jsp">  <i class="fa fa-bell-o" style="font-size:35px;color:white; position: absolute; top: 8px; right: 70px;"></i></a>
                <a href="destroy_session.jsp">  <i class="fa fa-sign-out" style="font-size:35px;color:white; position: absolute; top: 8px; right: 20px;"></i></a>
                <p class="handiazza"> HANDIAZZA</p>
                <div class="wrap-login100">
                    <div class="login100-form validate-form">
                        <span class="login100-form-title">
                            Seek A Question !!!!

                        </span>
                        <h4 class="a">"It is not the only answer that enlightens, but so does the question."</h4>
                        &nbsp;&nbsp;
                        <div class="container-login100-form-btn">
                            <form><button type="submit" class="login100-form-btn" formaction="faculty_chat.jsp">
                                    Resolve & learn....
                                </button></form>
                        </div>


                    </div>

                </div>
                <div class="wrap-login101">		
                    <div class="login100-form validate-form">
                        <span class="login100-form-title">
                            Student Profiles !!!
                        </span>
                        <h4 class="a">"Guide without dictating,and participate without dominating."</h4>
                        &nbsp;&nbsp;
                        <div class="wrap-input100 validate-input" data-validate = "Field cannot be empty">
                            <form action="viewprofile.jsp" method="post"><h5>Enter Student Name :</h5><input class="input100" type="text" name="sname" id="sname">
                                <span class="focus-input100"></span>
                        </div>
                        <div class="container-login100-form-btn">
                            <input type="submit" class="login100-form-btn" value="View Profiles...."></form>

                            <% session.getAttribute("user").toString(); %>
                        </div>
                    </div>	
                </div>
            </div>
        </div>
    </body>
</html>
