<%-- 
    Document   : stud_registration
    Created on : 27 Jan, 2018, 8:43:22 AM
    Author     : yashs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Register Student</title>
    </head>
    <body>
        <form method="post" action="registerstudent.jsp" enctype="multipart/form-data">
            <table align="center">
                <tr>
                    <td>Name</td>
                    <td><input type="text" id="name" name="name" required></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" id="lname" name="lname" required></td>
                </tr>
                <tr>
                    <td>Sap ID</td>
                    <td><input type="number" id="sapid" name="sapid" required></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><input type="text" id="un" name="un" required></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" id="pwd" name="pss" required></td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td><input type="password" id="cpwd" name="cpss" required></td>
                </tr>
                <tr>
                    <td>E-mail</td>
                    <td><input type="email" id="email" name="email" required></td>
                </tr>
                <tr>
                    <td>Phone no</td>
                    <td><input type="number"   id="pn" name="pn" required></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>Male<input type="radio" name="gender" value="Male" checked="checked" />
                        &nbsp;Female<input type="radio" name="gender" value="Female" /></td>
                </tr>
                <tr>
                    <td>Dob</td>
                    <td><input type="date" id="date" name="dob" required></td>
                </tr>
                <tr>
                    <td>Dept</td>
                    <td><input type="text" id="dept" name="dep" required></td>
                </tr>
                <tr>
                    <td>Student id</td>
                    <td><input type="file" id="photo" name="sid" required></td>
                    
                </tr>
                <tr>
                    <td><input type="submit" value="Submit" name="sub" onmouseover="valid();"/></td>
                    <td><input type="reset" value="Reset" name="res" /></td>
                </tr>
            </table>
        </form>
        <script type="text/javascript">
               var a,b;
               function valid()
               {
                    a=document.getElementById("pwd").value;
                    b=document.getElementById("cpwd").value;
                    if(a !=b)
                    {
                        alert("Both the password fields must match");
                    }
               
                }
        </script>
    </body>
    
</html>
