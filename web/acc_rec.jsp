<%-- 
    Document   : recruiter_registration
    Created on : Jan 27, 2018, 8:44:15 AM
    Author     : SBMPC.Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Recruitor Registration</title>
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

                    <form class="login100-form validate-form" action="register_recruiter.jsp">
                        <span class="login100-form-title">
                            Recruiter Registration
                        </span>
                        <table align="center">
                            <tr>
                                <td>Company Name: </td>
                                <td>
                                    <input class="input100" type="text" name="Company_name" required maxlength="20">

                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td> Email : &nbsp; </td>
                                <td>
                                    <input class="input100" type="email" id="email" name="email" reqiured maxlength="45">

                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td> Username : </td>
                                <td>
                                    <input class="input100" type="text" name="Username" id="un" value = "r" required maxlength="10">
                                    <div id="exists"></div><div id="start"></div>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Password : &nbsp; </td>
                                <td>
                                    <input class="input100" type="password" name="Password" id="pass" required maxlength="15" onfocus="user();">
                                    <div id="val"> 
                                    </div>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td> Confirm Password : &nbsp; </td>
                                <td>
                                    <input class="input100" type="password" name="CPassword" id="cpass" required maxlength="15">

                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td> Company ID : &nbsp; </td>
                                <td>
                                    <input class="input100" type="number" name="Company_ID" reqiured onfocus="valid();">

                                    &nbsp;
                                </td>
                            </tr>

                            <tr>
                                <td class="container-login100-form-btn"><input type="submit" value="Register" name="sub" class="login100-form-btn" onmouseover="valid();" formaction="recruitor_home.jsp">&nbsp;</td>

                                <td class="container-login100-form-btn"><input type="reset" value="Reset" name="res" class="login100-form-btn"></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>	
        <script type="text/javascript">
            var a, b;
            function valid() {

                a = document.getElementById("pass").value;
                b = document.getElementById("cpass").value;

                if (a != b) {
                    document.getElementById("val").innerHTML='Both the passwords should be correct';
                }
                else
                {
                   document.getElementById("val").innerHTML=''; 
                }
            }
            function user()
            {
                var x;
                x=document.getElementById("un").value;
                if(x.charAt(0)!='r')
                {
                    document.getElementById("start").innerHTML='Please Start your username with r';
                }
                else
                {
                    document.getElementById("start").innerHTML='';
                }
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
                                    document.getElementById("exists").innerHTML = xmlhttp.responseText;
                                    
                                }
                            }
                            xmlhttp.open("GET", "unvalid.jsp?q=" + x, true);
                            xmlhttp.send();
            }
        </script>

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