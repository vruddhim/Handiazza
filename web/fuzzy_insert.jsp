<%-- 
    Document   : fuzzy_insert
    Created on : Mar 12, 2018, 1:24:36 PM
    Author     : vruddhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fuzzy</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            int i = 0;
            Class.forName("com.mysql.jdbc.Driver");

            String jobids = request.getParameter("jobid");

            String tss = request.getParameter("ts");
            Float tsss = Float.parseFloat(tss);

            String branchs = request.getParameter("branch");

            String sems = request.getParameter("sem");
            Long semss = Long.parseLong(sems);

            String eds = request.getParameter("ed");
            Long edss = Long.parseLong(eds);

            String wes = request.getParameter("we");
            Long wess = Long.parseLong(wes);

            String c1 = request.getParameter("c1");
            String c2 = request.getParameter("c2");
            String c3 = request.getParameter("c3");
            String c4 = request.getParameter("c4");
            String c5 = request.getParameter("c5");
            String c6 = request.getParameter("c6");

            String ss1 = request.getParameter("ss1");
            String ss2 = request.getParameter("ss2");
            String ss3 = request.getParameter("ss3");

            String ts1 = request.getParameter("ts1");
            String ts2 = request.getParameter("ts2");
            String ts3 = request.getParameter("ts3");
            String ts4 = request.getParameter("ts4");
            String ts5 = request.getParameter("ts5");

            String i1 = request.getParameter("i1");
            String i2 = request.getParameter("i2");
            String i3 = request.getParameter("i3");
            String i4 = request.getParameter("i4");

            Connection a = DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza", "root", "root");

            PreparedStatement ps = a.prepareStatement("select * from education_req where jobid=?");
            ps.setString(1, jobids);
            ResultSet rs;
            rs = ps.executeQuery();
            while (rs.next()) {
                i++;
            }
            if (i > 0) {
                out.print("Job ID already exists");
            }
            if (i == 0) {
                PreparedStatement ps1 = a.prepareStatement("insert into education_req values (?,?,?,?,?,?)");
                ps1.setString(1, jobids);
                ps1.setFloat(2, tsss);
                ps1.setString(3, branchs);
                ps1.setLong(4, semss);
                ps1.setLong(5, edss);
                ps1.setLong(6, wess);
                ps1.executeUpdate();

                PreparedStatement ps2 = a.prepareStatement("insert into  achievement_req(jobid,description) values (?,?)");

                if (c1.isEmpty() == false) {
                    ps2.setString(1, jobids);
                    ps2.setString(2, c1);
                    ps2.executeUpdate();
                }
                if (c2.isEmpty() == false) {
                    ps2.setString(1, jobids);
                    ps2.setString(2, c2);

                    ps2.executeUpdate();
                }
                if (c3.isEmpty() == false) {
                    ps2.setString(1, jobids);
                    ps2.setString(2, c3);

                    ps2.executeUpdate();
                }
                if (c4.isEmpty() == false) {
                    ps2.setString(1, jobids);
                    ps2.setString(2, c4);

                    ps2.executeUpdate();
                }
                if (c5.isEmpty() == false) {
                    ps2.setString(1, jobids);
                    ps2.setString(2, c5);

                    ps2.executeUpdate();
                }

                if (c6.isEmpty() == false) {
                    ps2.setString(1, jobids);
                    ps2.setString(2, c6);

                    ps2.executeUpdate();
                }

                PreparedStatement ps3 = a.prepareStatement("insert into  skills_req(jobid,description) values (?,?)");
                if (ss1.isEmpty() == false) {
                    ps3.setString(1, jobids);
                    ps3.setString(2, ss1);

                    ps3.executeUpdate();
                }
                if (ss2.isEmpty() == false) {
                    ps3.setString(1, jobids);
                    ps3.setString(2, ss2);

                    ps3.executeUpdate();
                }
                if (ss3.isEmpty() == false) {
                    ps3.setString(1, jobids);
                    ps3.setString(2, ss3);

                    ps3.executeUpdate();
                }
                if (ts1.isEmpty() == false) {
                    ps3.setString(1, jobids);
                    ps3.setString(2, ts1);

                    ps3.executeUpdate();
                }

                if (ts2.isEmpty() == false) {
                    ps3.setString(1, jobids);
                    ps3.setString(2, ts2);

                    ps3.executeUpdate();
                }

                if (ts3.isEmpty() == false) {
                    ps3.setString(1, jobids);
                    ps3.setString(2, ts3);

                    ps3.executeUpdate();
                }

                if (ts4.isEmpty() == false) {
                    ps3.setString(1, jobids);
                    ps3.setString(2, ts4);

                    ps3.executeUpdate();
                }

                if (ts5.isEmpty() == false) {
                    ps3.setString(1, jobids);
                    ps3.setString(2, ts5);

                    ps3.executeUpdate();
                }
                PreparedStatement ps4 = a.prepareStatement("insert into  interests_req(jobid,description) values (?,?)");
                if (i1.isEmpty() == false) {
                    ps4.setString(1, jobids);
                    ps4.setString(2, i1);

                    ps4.executeUpdate();
                }

                if (i2.isEmpty() == false) {
                    ps4.setString(1, jobids);
                    ps4.setString(2, i2);
                    ps4.executeUpdate();
                }

                if (i3.isEmpty() == false) {
                    ps4.setString(1, jobids);
                    ps4.setString(2, i3);
                    ps4.executeUpdate();
                }

                if (i4.isEmpty() == false) {
                    ps4.setString(1, jobids);
                    ps4.setString(2, i4);
                    ps4.executeUpdate();
                }
            }
            response.sendRedirect("recruitor_home.jsp");
        %>
    </body>
</html>
