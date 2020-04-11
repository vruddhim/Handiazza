
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
        <link rel="stylesheet" type="text/css" href="css/rec_home2.css">
        <link href="https://fonts.googleapis.com/css?family=Playball" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Playball" rel="stylesheet">
        <!--===============================================================================================-->
    </head>
    <body>
        <div class="limiter">
            <div class="container-login100">
                <a href="login.jsp">  <i class="fa fa-bell-o" style="font-size:35px;color:white; position: absolute; top: 8px; right: 70px;"></i></a>
                <a href="destroy_session.jsp">  <i class="fa fa-sign-out" style="font-size:35px;color:white; position: absolute; top: 8px; right: 20px;"></i></a>
                <p class="handiazza"> HANDIAZZA</p>			
                <div class="wrap-login102">		
                    <div class="login100-form validate-form">
                        <span class="login100-form-title">
                            Recruit !!!!
                        </span>
                        <h4 class="a">"Enter your requirements for the job."</h4>

                        &nbsp;	
                        <div class="container-login100-form-btn">
                            <form action="requirements.jsp"><input type="submit" value="Specifications...." class="login100-form-btn" >
                            </form>	
                        </div>
                    </div>	
                </div>
                <div class="wrap-login101">		
                    <div class="login100-form validate-form">
                        <span class="login100-form-title">
                            Generate your list...
                        </span>
                        <form method="post" action="fuzzy.jsp">
                            <div class="wrap-input100">
                                <input class="input100" type="text" name="jid">
                                <span class="focus-input100"></span>

                            </div>
                            <div class="container-login100-form-btn">
                                <input class="login100-form-btn" type="submit"  value="Enter&nbsp;Job&nbsp;ID">	
                            </div>
                        </form>

                    </div>	
                </div>
                <div class="wrap-login102">		
                    <div class="login100-form validate-form">
                        <span class="login100-form-title">
                            Display your list...
                        </span>
                        <div class="wrap-input100 validate-input" data-validate = "Field cannot be empty">
                            <form action="los.jsp">	<input class="input100" type="text" name="jobid" id="jobid">
                                <span class="focus-input100"></span>

                        </div>
                        <div class="container-login100-form-btn">
                            <input type="submit" class="login100-form-btn" value="Enter&nbsp;Job&nbsp;ID">

                            </form>
                        </div>


                    </div>	
                </div>


            </div>
        </div>
    </body>
</html>