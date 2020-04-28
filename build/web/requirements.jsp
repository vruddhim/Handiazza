<%-- 
    Document   : Filtering requirements
    Created on : 26 Jan, 2018, 8:44:03 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Requirements</title>
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

                    <form class="login100-form validate-form" method="POST" action="fuzzy_insert.jsp" >
                        <span class="login100-form-title">
                            Requirements
                        </span>
                        <table>
                            <tr >
                                <td class="td1"><b>Job ID :</b><br><br>

                                    <input class="input100" type="text" name="jobid" required >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="td1" ><b> Enter your educational details:
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
                            <tr >
                                <td class="td1">Tenth Score :<br><br>

                                    <input class="input100" type="text" name="ts" required >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr >
                                <td class="td1">Branch :<br><br>

                                    <select class="input100"  id="dept" name="branch" required >
                                        <option value="Select">Select</option>
                                        <option value="Computer Engineering">Computer Engineering</option>
                                        <option value="Information Technology">IT</option>
                                        <option value="Mechanical Engineering">Mechanical Engineering</option>
                                        <option value="Electrical Engineering">Electrical Engineering</option>
                                        <option value="Civil Engineering">Civil Engineering</option>
                                        <option value="Mechanical Engineering">Mechanical Engineering</option>
                                        <option value="Electronics Engineering">Electronics Engineering</option>
                                        <option value="Chemical Engineering">Chemical Engineering</option>
                                        <option value="Plastics Engineering">Plastics Engineering</option>
                                    </select>
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr >
                                <td class="td1">Semester :<br><br>

                                    <input class="input100" type="text" name="sem" required >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr>

                            <tr >
                                <td class="td1">Average percentage :<br><br>

                                    <input class="input100" type="text" name="ed" required >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr >
                                <td class="td1">Work Experience(in months) :<br><br>

                                    <input class="input100" type="text" name="we" >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="td1" ><b> Enter you courses and achievements in technical field (such as Android , Machine Learning):
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
                            <tr>
                                <td class="td1">Course 1 :<br><br>

                                    <input class="input100" type="text" name="c1"  >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr> 
                            <tr>
                                <td class="td1">Course 2 :<br><br>

                                    <input class="input100" type="text" name="c2" >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr> 
                            <tr>
                                <td class="td1">Course 3 :<br><br>

                                    <input class="input100" type="text" name="c3" >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr>&nbsp;
                            <tr>
                                <td class="td1">Course 4 :<br><br>

                                    <input class="input100" type="text" name="c4" >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="td1">Course 5 :<br><br>

                                    <input class="input100" type="text" name="c5" >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr>        
                            <tr>
                                <td class="td1">Course 6 :<br><br>

                                    <input class="input100" type="text" name="c6"  >
                                    <span class="focus-input100"></span>
                                    &nbsp;&nbsp;
                                </td>
                            </tr>       
                            <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
                            <tr>
                                <td class="td1"><b>Enter you soft skills (such as leadership skills,management skills ) : </b><br><br></td>
                            </tr>
                            <tr>
                                <td class="td1"> Soft Skills 1:<br><br>

                                    <input class="input100" type="text" name="ss1" >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr> 
                            <tr>
                                <td class="td1">Soft Skills 2:<br><br>

                                    <input class="input100" type="text" name="ss2" >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr> 
                            <tr>
                                <td class="td1"> Soft Skills 3:<br><br>

                                    <input class="input100" type="text" name="ss3">
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr> 
                            <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
                            <tr>
                                <td class="td1"><b> Enter your technical skills (such as java , python) : </b><br><br></td>
                            </tr>
                            <tr>
                                <td class="td1"> Technical Skills 1:<br><br>

                                    <input class="input100" type="text" name="ts1" >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="td1"> Technical Skills 2:<br><br>

                                    <input class="input100" type="text" name="ts2"  >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="td1"> Technical Skills 3:<br><br>

                                    <input class="input100" type="text" name="ts3" >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="td1"> Technical Skills 4:<br><br>

                                    <input class="input100" type="text" name="ts4" >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="td1"> Technical Skills 5:<br><br>

                                    <input class="input100" type="text" name="ts5"  >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr>        
                            <tr>
                                <td class="td1" ><b> Enter your area of interests to work (such as DBA, NA):

                                </td>
                            </tr>
                            <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
                            <tr>
                                <td class="td1"> Interests 1:<br><br>

                                    <input class="input100" type="text" name="i1" >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="td1"> Interests 2:<br><br>

                                    <input class="input100" type="text" name="i2" >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="td1"> Interests 3:<br><br>

                                    <input class="input100" type="text" name="i3" >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="td1"> Interests 4:<br><br>

                                    <input class="input100" type="text" name="i4" >
                                    <span class="focus-input100"></span>

                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="container-login100-form-btn"><input type="submit" value="Submit" name="sub" class="login100-form-btn" onmouseover="valid();" formaction="fuzzy_insert.jsp" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                    <input type="reset" value="Reset" name="res" class="login100-form-btn"></td>
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