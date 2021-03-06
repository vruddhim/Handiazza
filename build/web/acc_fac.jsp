
<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html lang="en">
<head>
	<title>Faculty Registration</title>
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

                <form class="login100-form validate-form" action="register_faculty.jsp">
                    <span class="login100-form-title">
                        Faculty Register
                    </span>
                    <table align="center">
                        <tr>
                            <td>First Name : </td>
                            <td>
                                <input class="input100" type="text" name="First_name" required maxlength="15">
                                
                                &nbsp;
                            </td>
                        </tr>

                        <tr>
                            <td>Last Name : </td>
                            <td>
                                <input class="input100" type="text" name="Last_name" required maxlength="20">
                                
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>Sap-Id : </td>
                            <td>
                                <input class="input100" type="number" name="Sap_ID" required>
                                
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td> Username : </td>
                            <td>
                                <input class="input100" type="text" id="un" name="Username" value="f" required maxlength="10">
                                <div id="exists"></div><div id="start"></div>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>Password : &nbsp; </td>
                            <td>
                                <input class="input100" type="password" name="pass" id="pass" required maxlength="15" onfocus="user();">
                                <div id="valid"></div>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td> Confirm Password : &nbsp; </td>
                            <td>
                                <input class="input100" type="password" name="cpass" id="cpass" required placeholder="Confirm Password" maxlength="15">
                                
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td> Email : &nbsp; </td>
                            <td>
                                <input class="input100" type="email" id="email" name="Email" required maxlength="45">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td> Phone Number : &nbsp; </td>
                            <td>
                                <input class="input100" type="number" name="Phone_no" required>
                                
                                &nbsp;
                            </td>
                        </tr>
                        <tr>

                            <td> Gender : &nbsp; </td>
                            <td>
                                Male<input type="radio" name="gender" value="Male" checked="checked">
                                &nbsp;
                                &nbsp;
                                Female<input type="radio" name="gender" value="Female">
                                <span class="focus-input100"></span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td> DOB : &nbsp; </td>
                            <td>
                                <input type="date" name="Dob" required class="input100">
                                
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td> Department : &nbsp; </td>
                            <td>
                                <select class="input100"  id="dept" name="Dept" required >
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
                                
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td> Committee(optional) &nbsp; </td>
                            <td>
                                <input class="input100" name="committee" value="" maxlength="15" />
                                
                                &nbsp;
                            </td>
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
	<script type="text/javascript">
            var a,b;
            function valid()
            {
                
                a=document.getElementById("pass").value;
                b=document.getElementById("cpass").value;
            
                if(a!=b)
                {
                    document.getElementById("valid").innerHTML='Both the passwords should be correct'; 
                }
            }
            function user()
            {
                var x;
                x=document.getElementById("un").value;
                if(x.charAt(0)!='f')
                {
                    document.getElementById("start").innerHTML='Please Start your username with f';
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