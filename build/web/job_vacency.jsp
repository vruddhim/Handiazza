<%-- 
    Document   : job_vacency
    Created on : Mar 5, 2018, 4:49:39 PM
    Author     : vruddhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Job vacency</title>
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
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
    </head>
    <body>

        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">

                    <form class="login100-form validate-form" action="vacancy_insert.jsp">
                        <span class="login100-form-title">
                            Job Vacency
                        </span>
                        <table align="center">
                            <tr>
                                <td>Job Title: </td>
                                <td><input class="input100" type="text" id="name" name="Job Title" required >&nbsp;</td>
                            </tr>

                            <tr>
                                <td>Period:</td>
                                <td><input class="input100" type="text" id="lname" name="Period" required > &nbsp;</td>
                            </tr>
                            <tr>
                                <td>Payment:</td>
                                <td><input class="input100" type="text" id="un" name="Payment" required>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Description:</td>
                                <td><input class="input100" type="text" id="pwd" name="Description" required>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Venue:</td>
                                <td><input class="input100" type="password" id="cpwd" name="Venue" required>&nbsp;</td>
                            </tr>
                            <tr>
                                <td> Email : &nbsp; </td>
                                <td><input class="input100" type="email" id="email" name="email" reqiured>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="container-login100-form-btn"><input type="submit" value="Register" name="sub" class="login100-form-btn" onmouseover="valid();">&nbsp;</td>

                                <td class="container-login100-form-btn"><input type="reset" value="Reset" name="res" class="login100-form-btn"></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>	
        <!--===============================================================================================-->	
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/tilt/tilt.jquery.min.js"></script>
        <script >
                                $('.js-tilt').tilt({
                                    scale: 1.1
                                })
        </script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>

    </body>
</html>