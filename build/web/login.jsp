<%-- 
    Document   : login
    Created on : 26 Jan, 2018, 2:59:56 PM
    Author     : yashs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Berkshire+Swash|Chelsea+Market|Delius+Swash+Caps|Indie+Flower|Lily+Script+One|Lobster|Megrim|Mystery+Quest|Playball|Shadows+Into+Light" rel="stylesheet">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <link href='https://fonts.googleapis.com/css?family=Merienda' rel='stylesheet'>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
        <link href="https://fonts.googleapis.com/css?family=Playball" rel="stylesheet">
<!--===============================================================================================-->
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
                            <span class="login101-form-title">
						HANDIAZZA
					</span>
                            &nbsp;&nbsp;
				<div class="login100-pic js-tilt" data-tilt>
					<img src="images/img-01.png" alt="IMG">
				</div>
                                
				<form class="login100-form validate-form" method ="post" action="loginvalidate.jsp">
				         	
                                    <span class="login100-form-title">
						Member Login
					</span>
                                    

					<div class="wrap-input100 validate-input" data-validate = "Field cannot be empty">
                                            <input class="input100" type="text" name="uname" id="usn" required placeholder="Username">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "cannot be empty" id="pw">
                                            <input class="input100" type="password" name="passwd" id="pwd" required placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
                                            <button class="login100-form-btn">
							Login
						</button>
					</div>
					<div class="text-center p-t-30">
						<div class="dropdown" >
                            <p class="txt2">
                                Create An Account &nbsp;
                                <i class="fa fa-chevron-circle-down" aria-hidden="true"> </i>
                                    <a class="dropdown-content" href="acc_student.jsp">Student</a>
                                    <a class="dropdown-content" href="acc_fac.jsp">Faculty</a>
                                    <a class="dropdown-content" href="acc_rec.jsp">Recruiter</a>
                               
                            </p>
                        </div>
					</div>
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
		});
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
</body>
</html>