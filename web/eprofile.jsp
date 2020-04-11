<%-- 
    Document   : eprofile
    Created on : 20 Mar, 2018, 9:16:06 PM
    Author     : admin
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
    </head>
    <body>
        <form action="profile_insert.jsp">
            <h2> Educational Details </h2>
           <%        
                    String arr[]=new String[10];
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
                <td><input type="number" name="sap" value="<%=rs.getString("sap_id")%>" required>
            </tr>
            <tr>
                <td>School name: &nbsp; </td>
                <td>
                    <input type="text" name="sch" value="<%=rs.getString("school")%>" required>
                </td>
            </tr>
                        <tr>
                            <td> 10 percentage : &nbsp; </td>
                            <td>
                                <input  type="number" name="ten" value="<%=rs.getString("tenth_score")%>" reqiured>
                                
                            </td>
                        </tr>
                        <tr>
                            <td> Branch: &nbsp; </td>
                            <td>
                                <input type="text" name="branch" value="<%=rs.getString("branch")%>" required>
                                
                            </td>
                        </tr>
                        <tr>
                            <td> Semester : &nbsp; </td>
                            <td>
                                <input type="number" name="sem" value="<%=rs.getString("semester")%>" required>
                                
                            </td>
                        </tr>
                        <tr>
                            <td> Work Experience Duration : &nbsp; </td>
                            <td>
                                <input type="number" name="dur" value="<%=rs.getString("work_duration")%>" required>
                                
                            </td>
                        </tr>
                        <tr>
                            <td> Work Experience Description : &nbsp; </td>
                            <td>
                                <input type="text" name="des" value="<%=rs.getString("work_description")%>"reqiured>
                                
                            </td>
                        </tr>
                        <tr >
                            <td><b>Average percentage :</b><br><br>
                           
                                <input type="number" name="ap" value="<%=rs.getString("avg_score")%>"required >
                                
                                
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <% } %>
                        <tr>
                            <td><b>Enter the courses you have completed:</b>
                             
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
                                <input type="text" name="c1" value="<% if(i>0)
                                                                                        {
                                                                                            out.println(arr[0]);
                                                                                        }
                                                                                        
                                %>     
                                ">
                                                                                               
                                
                            </td>
                        </tr>
                        <tr>
                            <td>Course 2: &nbsp; </td>
                            <td>
                                <input type="text" name="c2" value="<% if(i>1)
                                                                                        {
                                                                                            out.println(arr[1]);
                                                                                        }
                                                                                        
                                                                                     %>     
                                ">
                                
                            </td>
                        </tr>
                        <tr>
                            <td>Course 3: &nbsp; </td>
                            <td>
                                <input type="text" name="c3" value="<% if(i>2)
                                                                                        {
                                                                                            out.println(arr[2]);
                                                                                        }
                                                                                        
                                                                                     %>  
                                ">
                                
                            </td>
                        </tr>
                        <tr>
                            <td>Course 4: &nbsp; </td>
                            <td>
                                <input type="text" name="c4" value="<% if(i>3)
                                                                                        {
                                                                                            out.println(arr[3]);
                                                                                        }
                                                                                        
                                                                                     %>  
                                ">
                                
                            </td>
                        </tr>
                        <tr>
                            <td>Course 5: &nbsp; </td>
                            <td>
                                <input type="text" name="c5" value="<% if(i>4)
                                                                                        {
                                                                                            out.println(arr[4]);
                                                                                        }
                                                                                       
                                                                                     %>  
                                ">
                                
                            </td>
                        </tr>
                        <tr>
                            <td>Course 6: &nbsp; </td>
                            <td>
                                <input type="text" name="c6" value="<% if(i>5)
                                                                                 {
                                                                                      out.println(arr[5]);
                                                                                  }

                                                                                     %>  
                                ">
                               
                            </td>
                        </tr>
                        <tr>
                            <td><b>Enter Your Skills:</b>
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
                            <td>Skill 1: &nbsp; </td>
                            <td>
                                <input type="text" name="is1" value="<% if(i>0)
                                                                                        {
                                                                                            out.println(arr[0]);
                                                                                        }
                                                                                       
                                                                                     %>  
                                ">
                                
                            </td>
                        </tr>
                        <tr>
                            <td>Skill 2: &nbsp; </td>
                            <td>
                                <input type="text" name="is2" value="<% if(i>1)
                                                                                        {
                                                                                            out.println(arr[1]);
                                                                                        }
                                                                                        
                                                                                     %>  
                                ">
                               
                            </td>
                        </tr>
                        <tr>
                            <td>Skill 3: &nbsp; </td>
                            <td>
                                <input type="text" name="is3" value="<% if(i>2)
                                                                                        {
                                                                                            out.println(arr[2]);
                                                                                        }
                                                                                        
                                                                                     %>  
                                ">
                                
                            </td>
                        </tr>
                        <tr>
                            <td>Skill 4: &nbsp; </td>
                            <td>
                                <input type="text" name="is4"  value="<% if(i>3)
                                                                                        {
                                                                                            out.println(arr[3]);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            out.println(" ");
                                                                                        }
                                                                                     %>  
                                 ">
                                
                            </td>
                        </tr>
                        
                        <tr>
                            <td>Skill 5: &nbsp; </td>
                            <td>
                                <input type="text" name="s1"  value="<% if(i>4)
                                                                                        {
                                                                                            out.println(arr[4]);
                                                                                        }
                                                                                        
                                                                                     %>  ">
                                
                            </td>
                        </tr>
                        <tr>
                            <td>Skill 6: &nbsp; </td>
                            <td>
                                <input type="text" name="s2"  value="<% if(i>5)
                                                                                        {
                                                                                            out.println(arr[5]);
                                                                                        }
                                                                                       
                                                                                     %>  ">
                                
                            </td>
                        </tr>
                        <tr>
                            <td>Skill 7: &nbsp; </td>
                            <td>
                                <input type="text" name="s3"  value="<% if(i>6)
                                                                                        {
                                                                                            out.println(arr[6]);
                                                                                        }
                                                                                        
                                                                                     %>  ">
                               
                               
                            </td>
                        </tr>
                        <tr>
                            <td>Skill 8: &nbsp; </td>
                            <td>
                                <input type="text" name="s4"  value="<% if(i>7)
                                                                                        {
                                                                                            out.println(arr[7]);
                                                                                        }
                                                                                        
                                                                                     %>  ">
                               
                            </td>
                        </tr>
                        <tr>
                            <td>Skill 9: &nbsp; </td>
                            <td>
                                <input type="text" name="s5"  value="<% if(i>8)
                                                                                        {
                                                                                            out.println(arr[8]);
                                                                                        }
                                                                                        
                                                                                     %>  ">
                                
                            </td>
                        </tr>
                        <tr>
                            <td><b>List Out Your Interests:</b>
                             
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
                                <input type="text" name="i1" value="<% if(i>0)
                                                                                        {
                                                                                            out.println(arr[0]);
                                                                                        }
                                                                                       
                                                                                        
                                                                                     %>     
                                ">
                                
                            </td>
                        </tr>
                        <tr>
                            <td>Interest 2: &nbsp; </td>
                            <td>
                                <input type="text" name="i2" value="<%if(i>1)
                                                                                        {
                                                                                            out.println(arr[1]);
                                                                                        }
                                                                                       
                                                                                     %>     
                                ">
                                
                            </td>
                        </tr>
                        <tr>
                            <td>Interest 3: &nbsp; </td>
                            <td>
                                <input type="text" name="i3" value="<%if(i>2)
                                                                                        {
                                                                                            out.println(arr[2]);
                                                                                        }
                                                                                       
                                                                                     %> 
                                ">
                                
                            </td>
                        </tr>
                        <tr>
                            <td>Interest 4: &nbsp; </td>
                            <td>
                                <input type="text" name="i4" value="<%if(i>3)
                                                                                        {
                                                                                            out.println(arr[3]);
                                                                                        }
                                                                                       
                                                                                     %>
                                ">
                                
                               
                            </td>
                        </tr>
                        <tr>
                            <td>Interest 5: &nbsp; </td>
                            <td>
                                <input type="text" name="i5" value="<%if(i>4)
                                                                                        {
                                                                                            out.println(arr[4]);
                                                                                        }
                                %>
                                                                                       
                                 ">
                               
                            </td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Register" name="sub" onmouseover="valid();">&nbsp;</td>

                            <td><input type="reset" value="Reset" name="res"></td>
                        </tr>
                    </table>
                </form>
          
       
        
    </body>
</html>
