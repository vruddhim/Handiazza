<%-- 
    Document   : student_home
    Created on : Mar 5, 2018, 4:45:42 PM
    Author     : vruddhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/home.css">
        <link href="https://fonts.googleapis.com/css?family=Aclonica" rel="stylesheet">	
        <link href="https://fonts.googleapis.com/css?family=Playball" rel="stylesheet">
        <!--===============================================================================================-->
    </head>
    <body>

        <div class="limiter">
            <div class="container-login100">
                <a href="notification.jsp">  <i class="fa fa-bell-o" style="font-size:35px;color:white; position: absolute; top: 8px; right: 70px;"></i></a>
                <a href="destroy_session.jsp">  <i class="fa fa-sign-out" style="font-size:35px;color:white; position: absolute; top: 8px; right: 20px;"></i></a>
                <p class="handiazza"> HANDIAZZA</p>
                <div class="wrap-login100">
                    <div class="login100-form validate-form">
                        <span class="login100-form-title">
                            Seek An Answer!!!     
                        </span>
                        <h4 class="a">" A mind troubled by doubt cannot focus on the course to victory. "</h4>
                        &nbsp;&nbsp;
                        <div class="container-login100-form-btn">
                            <form action="displayach.jsp"><button type="submit" class="login100-form-btn" formaction="student_chat.jsp">
                                    Let's ask....
                                </button></form>
                        </div>


                    </div>

                </div>

                <div class="wrap-login101">		
                    <div class="login100-form validate-form">
                        <span class="login100-form-title">
                            Profile !!!

                        </span>
                        <h4 class="a">" Find out what you like doing best and get paid for doing it. "</h4>
                        &nbsp;&nbsp;
                        <div class="container-login100-form-btn">
                            <form><button type="submit" class="login100-form-btn" formaction="profile.jsp">
                                    Let's build....
                                </button></form>
                        </div>

                    </div>	
                </div>
            </div>
        </div>
    </body>
</html>
