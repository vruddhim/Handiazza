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
                            Semester :      
                        </span>
                                                 <form action="displayach.jsp" method="get">

                        <center>
                         <br>
                                    Second Year<input type="radio" name="sem" value="2" checked="checked">
                                    &nbsp;
                                    &nbsp;<br>
                                    Third Year<input type="radio" name="sem" value="3">
                                    <span class="focus-input100"></span>
                                    &nbsp;<br>
                                    Final Year<input type="radio" name="sem" value="4">
                                    &nbsp;
                                    &nbsp;<br>
                        </center>       <br><br>
                                
                        <div class="container-login100-form-btn">
                            <button type="submit" class="login100-form-btn" formaction="displayacg.jsp">
                                    Let's build....
                                </button>
                                                 
                        </div>


                    </div>

                </div>

                <div class="wrap-login101">		
                    <div class="login100-form validate-form">
                        <span class="login100-form-title">
                            Duration :

                        </span>
                        <center>
                         <br>
                                   Weekly<input type="radio" name="time" value="w">
                                    &nbsp;
                                    &nbsp;<br>
                                   Monthly<input type="radio" name="time" value="m">
                                    <span class="focus-input100"></span>
                                    &nbsp;<br>
                                    Yearly<input type="radio" name="time" value="y" checked="checked">
                                    &nbsp;
                                    &nbsp;<br>
                        </center>       <br><br>
                        <div class="container-login100-form-btn">
                            <button type="submit" class="login100-form-btn" formaction="displayach.jsp">
                                    Let's build....</button>
                                    
                        </div>
                        </form>
                    </div>	
                </div>
            </div>
        </div>
    </body>
</html>
