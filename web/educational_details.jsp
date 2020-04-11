<%-- 
    Document   : recruiter_registration
    Created on : Jan 27, 2018, 8:44:15 AM
    Author     : SBMPC.Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<title>Educational Details</title>
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

                <form class="login100-form validate-form" method="POST" action="profile_insert.jsp">
                    <span class="login100-form-title">
                        Educational Details
                    </span>
                    <table>
                        <tr>
                            <td>Sap_ID: &nbsp; </td>
                            <td>
                                <input class="input100" type="number" name="sap" required>
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>School name: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="sch" required>
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td> 10 percentage : &nbsp; </td>
                            <td>
                                <input class="input100" type="number" name="ten" reqiured>
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td> Branch: &nbsp; </td>
                            <td>
                               
                                <select class="input100"  id="dept" name="branch" required>
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
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td> Semester : &nbsp; </td>
                            <td>
                                <input class="input100" type="number" name="sem" required>
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-lock" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td> Work Experience Duration : &nbsp; </td>
                            <td>
                                <input class="input100" type="number" name="dur" required>
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-lock" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td> Work Experience Description : &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="des" reqiured>
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr >
                            <td class="td1">Average percentage :</<br><br></td>
                            <td>
                                <input class="input100" type="number" name="ap" required >
                                <span class="focus-input100"></span>
                                
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="td1" >
                                <b>Enter the courses you have completed:</b>
                            </td>
                        </tr>
                        <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
                        <tr>
                            <td>Course 1: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="c1">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>Course 2: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="c2">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>Course 3: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="c3">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>Course 4: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="c4">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>Course 5: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="c5">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>Course 6: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="c6">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="td1" ><b>Enter Your Interpersonal Skills:</b>
                             
                            </td>
                        </tr>
                        <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
                        <tr>
                            <td>Interpersonal Skills 1: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="is1">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>Interpersonal Skills 2: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="is2">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>Interpersonal Skills 3: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="is3">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>Interpersonal Skills 4: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="is4">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="td1" ><b>Enter your Expertness/Skills:</b>
                             
                            </td>
                        </tr>
                        <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
                        <tr>
                            <td>Skills 1: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="s1">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>Skills 2: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="s2">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>Skills 3: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="s3">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>Skills 4: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="s4">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>Skills 5: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="s5">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="td1" ><b>List Out Your Interests:</b>
                             
                            </td>
                        </tr>
                        <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
                        <tr>
                            <td>Interest 1: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="i1">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>Interest 2: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="i2">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>Interest 3: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="i3">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>Interest 4: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="i4">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>Interest 5: &nbsp; </td>
                            <td>
                                <input class="input100" type="text" name="i5">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
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