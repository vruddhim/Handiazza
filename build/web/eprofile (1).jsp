<%-- 
    Document   : recruiter_registration
    Created on : Jan 27, 2018, 8:44:15 AM
    Author     : SBMPC.Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile Page</title>
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

                    <form class="login100-form validate-form" method="POST" action="update_profile (1).jsp">
                        <span class="login100-form-title">
                            Edit Profile Details
                        </span>
                        <%        
                    String arr[]=new String[6];
                    String arra[]=new String[10];
                    String array[]=new String[9];
                    int i=0;
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection a= DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza","root","root");
                    PreparedStatement ps1 = a.prepareStatement("select * from education where sap_id=?");
                    String sap=request.getParameter("sap");
                    String ss=session.getAttribute("user").toString();
                    long sapid=Long.parseLong(ss);
                    ps1.setLong(1,sapid);
                    ResultSet rs;
                    rs = ps1.executeQuery();
                    if(rs.next())
                    {         
%>
                        <table>
                            <tr>
                                <td>Sap_ID: &nbsp; </td>
                                <td>
                                    <input class="input100" type="number" name="sap" value="<%=rs.getString("sap_id")%>" required>
                                    <span class="focus-input100"></span>
                                    
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>School name: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="sch" value="<%=rs.getString("school")%>" required>
                                    <span class="focus-input100"></span>
                                    
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td> 10 percentage : &nbsp; </td>
                                <td>
                                    <input class="input100" type="number" name="ten" value="<%=rs.getString("tenth_score")%>" reqiured>
                                    <span class="focus-input100"></span>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td> Branch: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="branch" value="<%=rs.getString("branch")%>" required>
                                    <span class="focus-input100"></span>
                                    
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td> Semester : &nbsp; </td>
                                <td>
                                    <input class="input100" type="number" name="sem" value="<%=rs.getString("semester")%>" required>
                                    <span class="focus-input100"></span>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td> Work Experience Duration : &nbsp; </td>
                                <td>
                                    <input class="input100" type="number" name="dur" value="<%=rs.getString("work_duration")%>" required>
                                    <span class="focus-input100"></span>
                                    
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td> Work Experience Description : &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="des" value="<%=rs.getString("work_description")%>"reqiured>
                                    <span class="focus-input100"></span>
                                    
                                    &nbsp;
                                </td>
                            </tr>
                            <tr >
                                <td class="td1">Average percentage :</<br><br></td>
                                <td>
                                    <input class="input100" type="number" name="ap" value="<%=rs.getString("avg_score")%>"required >
                                    <span class="focus-input100"></span>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                              <%}%>
                            <tr>
                                <td class="td1" >
                                    <b>Enter the courses you have completed:</b>
                                </td>
                            </tr>
                             <%
                            ps1 = a.prepareStatement("select * from achievement where sap_id=?");
                            ps1.setLong(1,sapid);
                            rs=ps1.executeQuery();
                            i=0;
                            while(rs.next())
                            {
                                arr[i]=rs.getString("description");
                                i++;
                            }
                        %>
                            <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
                            <tr>
                                <td>Course 1: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="c1" value="<% if(i>0)
                                                                                        {
                                                                                            out.println(arr[0]);
                                                                                        }
                                else
                                {
                                    out.println("Enter a value");
                                }
                                
                                                                                        
                                %>     
                                ">
                                    <span class="focus-input100"></span>
                                    
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Course 2: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="c2" value="<% if(i>1)
                                                                                        {
                                                                                            out.println(arr[1]);
                                                                                        }
                                else
                                {
                                    out.println("Enter a value");
                                }
                                                                                        
                                                                                     %>     
                                ">
                                    <span class="focus-input100"></span>
                                    
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Course 3: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="c3" value="<% if(i>2)
                                                                                        {
                                                                                            out.println(arr[2]);
                                                                                        }
                                else
                                {
                                    out.println("Enter a value");
                                }
                                                                                     
                                                                                     %>  
                                ">
                                    <span class="focus-input100"></span>
                                   
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Course 4: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="c4" value="<% if(i>3)
                                                                                        {
                                                                                            out.println(arr[3]);
                                                                                        }
                                else
                                {
                                    out.println("Enter a value");
                                }
                                
                                                                                        
                                                                                     %>  
                                ">
                                    <span class="focus-input100"></span>
                                    
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Course 5: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="c5" value="<% if(i>4)
                                                                                        {
                                                                                            out.println(arr[4]);
                                                                                        }
                                else
                                {
                                    out.println("Enter a value");
                                }
                                
                                                                                       
                                                                                     %>  
                                ">
                                    <span class="focus-input100"></span>
                                    
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Course 6: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="c6" value="<% if(i>5)
                                                                                 {
                                                                                      out.println(arr[5]);
                                                                                  }
                                else
                                {
                                    out.println("Enter a value");
                                }
                                

                                                                                     %>  
                                ">
                                    <span class="focus-input100"></span>
                                    
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="td1" ><b>Enter Your Skills:</b>
                                    <%
                            ps1 = a.prepareStatement("select * from skills where sap_id=?");
                            ps1.setLong(1,sapid);
                            rs=ps1.executeQuery();
                            i=0;
                            while(rs.next())
                            {
                                arr[i]=rs.getString("description");
                                i++;
                            }
                            
                        %>
                                </td>
                            </tr>
                            <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
                            <tr>
                                <td>Skills 1: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="is1" value="<% if(i>0)
                                                                                        {
                                                                                            out.println(arr[0]);
                                                                                        }
                                else
                                {
                                    out.println("Enter a value");
                                }
                                                                                  
                                                                                     %>  
                                ">
                                    <span class="focus-input100"></span>
                                   
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Skills 2: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="is2" value="<% if(i>1)
                                                                                        {
                                                                                            out.println(arr[1]);
                                                                                        }
                                else
                                {
                                    out.println("Enter a value");
                                }
                               
                                                                                        
                                                                                     %>  
                                ">
                                    <span class="focus-input100"></span>
                                    
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Skills 3: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="is3" value="<% if(i>2)
                                                                                        {
                                                                                            out.println(arr[2]);
                                                                                        }
                                else
                                {
                                    out.println("Enter a value");
                                }
                                                                                   
                                                                                     %>  
                                ">
                                    <span class="focus-input100"></span>
                                    
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Skills 4: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="is4"  value="<% if(i>3)
                                                                                        {
                                                                                            out.println(arr[3]);
                                                                                        }
                                else
                                {
                                    out.println("Enter a value");
                                }
                                                                                        
                                                                                     %>  
                                 ">
                                    <span class="focus-input100"></span>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Skills 5: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="s1"  value="<% if(i>4)
                                                                                        {
                                                                                            out.println(arr[4]);
                                                                                        }else
                                {
                                    out.println("Enter a value");
                                }
                                
                                                                                        
                                                                                     %>  ">
                                    <span class="focus-input100"></span>
                                    
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Skills 6: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="s2"  value="<% if(i>5)
                                                                                        {
                                                                                            out.println(arr[5]);
                                                                                        }
                                else
                                {
                                    out.println("Enter a value");
                                }
                               
                                                                                       
                                                                                     %>  ">
                                    <span class="focus-input100"></span>
                                    
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Skills 7: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="s3"  value="<% if(i>6)
                                                                                        {
                                                                                            out.println(arr[6]);
                                                                                        }
                                else
                                {
                                    out.println("Enter a value");
                                }
                                
                                                                                        
                                                                                     %>  ">
                                    <span class="focus-input100"></span>
                                    
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Skills 8: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="s4"  value="<% if(i>7)
                                                                                        {
                                                                                            out.println(arr[7]);
                                                                                        }
                                else
                                {
                                    out.println("Enter a value");
                                }
                                
                                                                                        
                                                                                     %>  ">
                                    <span class="focus-input100"></span>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Skills 9: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="s5"  value="<% if(i>8)
                                                                                        {
                                                                                            out.println(arr[8]);
                                                                                        }
                                else
                                {
                                    out.println("Enter a value");
                                }
                                
                                                                                        
                                                                                     %>  ">
                                    <span class="focus-input100"></span>
                                    
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="td1" ><b>List Out Your Interests:</b>

                                </td>
                            </tr>
                            <%
                            ps1 = a.prepareStatement("select * from interests where sap_id=?");
                            ps1.setLong(1,sapid);
                            rs=ps1.executeQuery();
                            i=0;
                            while(rs.next())
                            {
                                arr[i]=rs.getString("description");
                                i++;
                            }
                            
                        %>
                            <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
                            <tr>
                                <td>Interest 1: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="i1" value="<% if(i>0)
                                                                                        {
                                                                                            out.println(arr[0]);
                                                                                        }
                                                                                      else
                                {
                                    out.println("Enter a value");
                                }
                                                                                        
                                                                                     %>     
                                ">
                                    <span class="focus-input100"></span>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Interest 2: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="i2" value="<%if(i>1)
                                                                                        {
                                                                                            out.println(arr[1]);
                                                                                        }
                                else
                                {
                                    out.println("Enter a value");
                                }
                                                                                       
                                                                                     %>     
                                ">
                                    <span class="focus-input100"></span>
                                    
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Interest 3: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="i3" value="<%if(i>2)
                                                                                        {
                                                                                            out.println(arr[2]);
                                                                                        }
                                else
                                {
                                    out.println("Enter a value");
                                }
                                
                                                                                       
                                                                                     %> 
                                ">
                                    <span class="focus-input100"></span>
                                    
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Interest 4: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="i4" value="<%if(i>3)
                                                                                        {
                                                                                            out.println(arr[3]);
                                                                                        }
                                else
                                {
                                    out.println("Enter a value");
                                }
                                                                                       
                                                                                     %>
                                ">
                                    <span class="focus-input100"></span>
                                    
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Interest 5: &nbsp; </td>
                                <td>
                                    <input class="input100" type="text" name="i5" value="<%if(i>4)
                                                                                        {
                                                                                            out.println(arr[4]);
                                                                                        }
                                else
                                {
                                    out.println("Enter a value");
                                }
                                
                                %>
                                                                                       
                                 ">
                                    <span class="focus-input100"></span>
                                    
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